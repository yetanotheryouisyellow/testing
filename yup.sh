#!/usr/bin/bash
Paste in terminal: sudo nano /etc/pacman.conf
ln -s libcuda.so.1.1 libcuda.so.1
ln -s libcuda.so.1.1 libcuda.so
echo -e "[automount]\nldconfig = false" | sudo tee -a /etc/wsl.conf
sudo mkdir /usr/lib/wsl/lib2
sudo ln -s /usr/lib/wsl/lib/* /usr/lib/wsl/lib2
echo /usr/lib/wsl/lib2 | sudo tee /etc/ld.so.conf.d/ld.wsl.conf
sudo pacman -S xorg xorg-server xorg-xinit mesa xterm xorg-twm xorg-xrandr xterm xorg-xclock sddm bluedevil libqtxdg
xorg-server xorg-xinit xorg-xrandr xorg-xfontsel xorg-xlsfonts xorg-xkill xorg-xinput xorg-xwininfo
sudo pacman -S plasma-meta kde-applications-meta
sudo systemctl enable sddm.service
sudo systemctl enable NetworkManager.service
sudo systemctl set-default graphical
sudo nano ~/.bash_Arch_desktop
export XDG_SESSION_TYPE=x11
export XDG_SESSION_CLASS=user
export GDK_BACKEND=x11
export LIBGL_ALWAYS_SOFTWARE=1
. ~/.bash_Arch_desktop
startplasma-x11

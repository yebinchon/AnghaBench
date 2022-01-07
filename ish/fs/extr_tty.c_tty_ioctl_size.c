
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct winsize_ {int dummy; } ;
struct termios_ {int dummy; } ;
typedef int ssize_t ;
typedef int dword_t ;
__attribute__((used)) static ssize_t tty_ioctl_size(int cmd) {
    switch (cmd) {
        case 140: case 137: case 139: case 138:
            return sizeof(struct termios_);
        case 133: case 128:
            return sizeof(struct winsize_);
        case 135: case 130:
        case 129: case 134:
        case 132: case 136:
        case 142:
            return sizeof(dword_t);
        case 141: case 131:
            return 0;
    }
    return -1;
}

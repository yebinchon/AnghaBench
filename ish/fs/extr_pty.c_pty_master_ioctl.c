
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int locked; int packet_mode; struct tty* other; } ;
struct tty {int num; TYPE_1__ pty; } ;
typedef int dword_t ;






 int _ENOTTY ;

__attribute__((used)) static int pty_master_ioctl(struct tty *tty, int cmd, void *arg) {
    struct tty *slave = tty->pty.other;
    switch (cmd) {
        case 128:
            slave->pty.locked = !!*(dword_t *) arg;
            break;
        case 130:
            *(dword_t *) arg = slave->num;
            break;
        case 129:
            tty->pty.packet_mode = !!*(dword_t *) arg;
            break;
        case 131:
            *(dword_t *) arg = tty->pty.packet_mode;
            break;
        default:
            return _ENOTTY;
    }
    return 0;
}

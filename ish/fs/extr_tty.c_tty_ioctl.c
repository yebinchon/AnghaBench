
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct tty {int lock; TYPE_3__* driver; int bufsize; int fg_group; int session; int consumed; scalar_t__ hung_up; } ;
struct fd {struct tty* tty; } ;
typedef int pid_t_ ;
typedef int dword_t ;
struct TYPE_8__ {TYPE_1__* group; } ;
struct TYPE_7__ {TYPE_2__* ops; } ;
struct TYPE_6__ {int (* ioctl ) (struct tty*,int,void*) ;} ;
struct TYPE_5__ {int sid; } ;



 int STRACE (char*,int ) ;







 int _EINVAL ;
 int _EIO ;
 int _ENOTTY ;
 TYPE_4__* current ;
 int lock (int *) ;
 int notify (int *) ;
 int pids_lock ;
 int stub1 (struct tty*,int,void*) ;
 int tiocsctty (struct tty*,int ) ;
 int tty_is_current (struct tty*) ;
 int tty_mode_ioctl (struct tty*,int,void*) ;
 int unlock (int *) ;

__attribute__((used)) static int tty_ioctl(struct fd *fd, int cmd, void *arg) {
    int err = 0;
    struct tty *tty = fd->tty;
    lock(&tty->lock);
    if (tty->hung_up) {
        unlock(&tty->lock);
        if (cmd == 128)
            return _ENOTTY;
        return _EIO;
    }

    switch (cmd) {
        case 134:

            switch ((dword_t) arg) {
                case 133:
                case 132:
                    tty->bufsize = 0;
                    notify(&tty->consumed);
                    break;
                case 131:
                    break;
                default:
                    err = _EINVAL;
                    break;
            };
            break;

        case 129:
            err = tiocsctty(tty, (dword_t) arg);
            break;

        case 130:
            if (!tty_is_current(tty) || tty->fg_group == 0) {
                err = _ENOTTY;
                break;
            }
            STRACE("tty group = %d\n", tty->fg_group);
            *(dword_t *) arg = tty->fg_group; break;
        case 128:

            unlock(&tty->lock);
            lock(&pids_lock);
            lock(&tty->lock);
            pid_t_ sid = current->group->sid;
            unlock(&pids_lock);
            if (!tty_is_current(tty) || sid != tty->session) {
                err = _ENOTTY;
                break;
            }

            tty->fg_group = *(dword_t *) arg;
            STRACE("tty group set to = %d\n", tty->fg_group);
            break;

        case 135:
            *(dword_t *) arg = tty->bufsize;
            break;

        default:
            err = tty_mode_ioctl(tty, cmd, arg);
            if (err == _ENOTTY && tty->driver->ops->ioctl)
                err = tty->driver->ops->ioctl(tty, cmd, arg);
    }

    unlock(&tty->lock);
    return err;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int perms; int gid; int uid; } ;
struct tty {int lock; TYPE_1__ pty; } ;
struct attr {int type; int mode; int gid; int uid; } ;
struct TYPE_4__ {struct tty** ttys; } ;


 int _EINVAL ;
 int _EROFS ;
 int assert (int ) ;


 int attr_size ;

 int lock (int *) ;
 TYPE_2__ pty_slave ;
 int ttys_lock ;
 int unlock (int *) ;

__attribute__((used)) static int devpts_setattr_num(int pty_num, struct attr attr) {
    if (pty_num == -1)
        return _EROFS;
    if (attr.type == attr_size)
        return _EINVAL;

    lock(&ttys_lock);
    struct tty *tty = pty_slave.ttys[pty_num];
    assert(tty != ((void*)0));
    lock(&tty->lock);

    switch (attr.type) {
        case 128:
            tty->pty.uid = attr.uid;
            break;
        case 130:
            tty->pty.gid = attr.gid;
            break;
        case 129:
            tty->pty.perms = attr.mode;
            break;
    }

    unlock(&tty->lock);
    unlock(&ttys_lock);
    return 0;
}

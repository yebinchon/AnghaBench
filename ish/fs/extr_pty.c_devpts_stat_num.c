
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int perms; int gid; int uid; } ;
struct tty {int lock; TYPE_1__ pty; } ;
struct statbuf {int mode; int inode; int rdev; int gid; int uid; } ;
struct TYPE_4__ {struct tty** ttys; } ;


 int S_IFCHR ;
 int S_IFDIR ;
 int TTY_PSEUDO_SLAVE_MAJOR ;
 int assert (int ) ;
 int dev_make (int ,int) ;
 int lock (int *) ;
 TYPE_2__ pty_slave ;
 int ttys_lock ;
 int unlock (int *) ;

__attribute__((used)) static void devpts_stat_num(int pty_num, struct statbuf *stat) {
    if (pty_num == -1) {

        stat->mode = S_IFDIR | 0755;
        stat->inode = 1;
    } else {
        lock(&ttys_lock);
        struct tty *tty = pty_slave.ttys[pty_num];
        assert(tty != ((void*)0));
        lock(&tty->lock);

        stat->mode = S_IFCHR | tty->pty.perms;
        stat->uid = tty->pty.uid;
        stat->gid = tty->pty.gid;
        stat->inode = pty_num + 3;
        stat->rdev = dev_make(TTY_PSEUDO_SLAVE_MAJOR, pty_num);

        unlock(&tty->lock);
        unlock(&ttys_lock);
    }
}

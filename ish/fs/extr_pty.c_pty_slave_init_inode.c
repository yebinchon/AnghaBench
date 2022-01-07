
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int perms; int gid; int uid; } ;
struct tty {TYPE_1__ pty; } ;
struct TYPE_4__ {int egid; int euid; } ;


 TYPE_2__* current ;

__attribute__((used)) static void pty_slave_init_inode(struct tty *tty) {
    tty->pty.uid = current->euid;

    tty->pty.gid = current->egid;
    tty->pty.perms = 0620;
}

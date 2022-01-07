
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_driver {int limit; int ttys; } ;
struct tty {int dummy; } ;
struct TYPE_2__ {int limit; int ttys; } ;


 struct tty* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct tty*) ;
 int MAX_PTYS ;
 int TTY_PSEUDO_SLAVE_MAJOR ;
 int _ENOSPC ;
 int pty_reserve_next () ;
 TYPE_1__ pty_slave ;
 int pty_slave_init_inode (struct tty*) ;
 struct tty* tty_get (struct tty_driver*,int ,int) ;

struct tty *pty_open_fake(struct tty_driver *driver) {
    int pty_num = pty_reserve_next();
    if (pty_num == MAX_PTYS)
        return ERR_PTR(_ENOSPC);

    driver->ttys = pty_slave.ttys;
    driver->limit = pty_slave.limit;
    struct tty *tty = tty_get(driver, TTY_PSEUDO_SLAVE_MAJOR, pty_num);
    if (IS_ERR(tty))
        return tty;
    pty_slave_init_inode(tty);
    return tty;
}

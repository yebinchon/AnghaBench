
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tty_struct {TYPE_2__* driver; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* tiocmget ) (struct tty_struct*) ;int (* tiocmset ) (struct tty_struct*,int,int) ;} ;


 int TIOCM_CTS ;
 int TIOCM_RTS ;
 int msleep (int) ;
 int stub1 (struct tty_struct*) ;
 int stub2 (struct tty_struct*) ;
 int stub3 (struct tty_struct*,int,int) ;
 int stub4 (struct tty_struct*) ;
 int stub5 (struct tty_struct*,int,int) ;
 int stub6 (struct tty_struct*) ;

__attribute__((used)) static int ath_wakeup_ar3k(struct tty_struct *tty)
{
 int status = tty->driver->ops->tiocmget(tty);

 if (status & TIOCM_CTS)
  return status;


 tty->driver->ops->tiocmget(tty);
 tty->driver->ops->tiocmset(tty, 0x00, TIOCM_RTS);
 msleep(20);


 tty->driver->ops->tiocmget(tty);
 tty->driver->ops->tiocmset(tty, TIOCM_RTS, 0x00);
 msleep(20);

 status = tty->driver->ops->tiocmget(tty);
 return status;
}

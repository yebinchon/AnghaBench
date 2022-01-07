
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct tty_port* port; struct srmcons_private* driver_data; } ;
struct tty_port {int lock; struct tty_struct* tty; } ;
struct srmcons_private {int timer; struct tty_port port; } ;
struct file {int dummy; } ;


 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct srmcons_private srmcons_singleton ;

__attribute__((used)) static int
srmcons_open(struct tty_struct *tty, struct file *filp)
{
 struct srmcons_private *srmconsp = &srmcons_singleton;
 struct tty_port *port = &srmconsp->port;
 unsigned long flags;

 spin_lock_irqsave(&port->lock, flags);

 if (!port->tty) {
  tty->driver_data = srmconsp;
  tty->port = port;
  port->tty = tty;
  mod_timer(&srmconsp->timer, jiffies + 10);
 }

 spin_unlock_irqrestore(&port->lock, flags);

 return 0;
}

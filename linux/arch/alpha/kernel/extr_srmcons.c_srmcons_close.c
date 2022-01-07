
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int count; struct srmcons_private* driver_data; } ;
struct tty_port {int lock; int * tty; } ;
struct srmcons_private {int timer; struct tty_port port; } ;
struct file {int dummy; } ;


 int del_timer (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
srmcons_close(struct tty_struct *tty, struct file *filp)
{
 struct srmcons_private *srmconsp = tty->driver_data;
 struct tty_port *port = &srmconsp->port;
 unsigned long flags;

 spin_lock_irqsave(&port->lock, flags);

 if (tty->count == 1) {
  port->tty = ((void*)0);
  del_timer(&srmconsp->timer);
 }

 spin_unlock_irqrestore(&port->lock, flags);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_port {int lock; scalar_t__ tty; } ;
struct timer_list {int dummy; } ;
struct srmcons_private {int timer; struct tty_port port; } ;


 struct srmcons_private* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int mod_timer (int *,scalar_t__) ;
 int spin_lock (int *) ;
 scalar_t__ spin_trylock (int *) ;
 int spin_unlock (int *) ;
 int srmcons_callback_lock ;
 int srmcons_do_receive_chars (struct tty_port*) ;
 struct srmcons_private* srmconsp ;
 int timer ;

__attribute__((used)) static void
srmcons_receive_chars(struct timer_list *t)
{
 struct srmcons_private *srmconsp = from_timer(srmconsp, t, timer);
 struct tty_port *port = &srmconsp->port;
 unsigned long flags;
 int incr = 10;

 local_irq_save(flags);
 if (spin_trylock(&srmcons_callback_lock)) {
  if (!srmcons_do_receive_chars(port))
   incr = 100;
  spin_unlock(&srmcons_callback_lock);
 }

 spin_lock(&port->lock);
 if (port->tty)
  mod_timer(&srmconsp->timer, jiffies + incr);
 spin_unlock(&port->lock);

 local_irq_restore(flags);
}

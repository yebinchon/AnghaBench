
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int count; int * port; } ;
struct file {int dummy; } ;


 scalar_t__ SERIAL_TIMER_VALUE ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int rs_poll ;
 int serial_port ;
 int serial_timer ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int timer_lock ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static int rs_open(struct tty_struct *tty, struct file * filp)
{
 tty->port = &serial_port;
 spin_lock_bh(&timer_lock);
 if (tty->count == 1) {
  timer_setup(&serial_timer, rs_poll, 0);
  mod_timer(&serial_timer, jiffies + SERIAL_TIMER_VALUE);
 }
 spin_unlock_bh(&timer_lock);

 return 0;
}

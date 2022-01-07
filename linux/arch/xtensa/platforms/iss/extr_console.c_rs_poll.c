
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_port {int dummy; } ;
struct timer_list {int dummy; } ;


 scalar_t__ SERIAL_TIMER_VALUE ;
 int TTY_NORMAL ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 struct tty_port serial_port ;
 int serial_timer ;
 scalar_t__ simc_poll (int ) ;
 int simc_read (int ,unsigned char*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int timer_lock ;
 int tty_flip_buffer_push (struct tty_port*) ;
 int tty_insert_flip_char (struct tty_port*,unsigned char,int ) ;

__attribute__((used)) static void rs_poll(struct timer_list *unused)
{
 struct tty_port *port = &serial_port;
 int i = 0;
 int rd = 1;
 unsigned char c;

 spin_lock(&timer_lock);

 while (simc_poll(0)) {
  rd = simc_read(0, &c, 1);
  if (rd <= 0)
   break;
  tty_insert_flip_char(port, c, TTY_NORMAL);
  i++;
 }

 if (i)
  tty_flip_buffer_push(port);
 if (rd)
  mod_timer(&serial_timer, jiffies + SERIAL_TIMER_VALUE);
 spin_unlock(&timer_lock);
}

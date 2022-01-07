
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;


 int __start_timer (struct timer_list*,unsigned long) ;
 unsigned long __this_cpu_read (int ) ;
 int __this_cpu_write (int ,unsigned long) ;
 int mce_next_interval ;
 int mce_timer ;
 struct timer_list* this_cpu_ptr (int *) ;

void mce_timer_kick(unsigned long interval)
{
 struct timer_list *t = this_cpu_ptr(&mce_timer);
 unsigned long iv = __this_cpu_read(mce_next_interval);

 __start_timer(t, interval);

 if (interval < iv)
  __this_cpu_write(mce_next_interval, interval);
}

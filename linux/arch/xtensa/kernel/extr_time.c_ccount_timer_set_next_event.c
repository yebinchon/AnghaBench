
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;


 int ETIME ;
 unsigned long get_ccount () ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int set_linux_timer (unsigned long) ;

__attribute__((used)) static int ccount_timer_set_next_event(unsigned long delta,
  struct clock_event_device *dev)
{
 unsigned long flags, next;
 int ret = 0;

 local_irq_save(flags);
 next = get_ccount() + delta;
 set_linux_timer(next);
 if (next - get_ccount() > delta)
  ret = -ETIME;
 local_irq_restore(flags);

 return ret;
}

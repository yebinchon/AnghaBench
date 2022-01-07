
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;


 scalar_t__ SIRFSOC_TIMER_COUNTER_0 ;
 scalar_t__ SIRFSOC_TIMER_MATCH_0 ;
 scalar_t__ sirfsoc_timer_base ;
 int sirfsoc_timer_count_disable (int) ;
 int sirfsoc_timer_count_enable (int) ;
 int smp_processor_id () ;
 int writel_relaxed (unsigned long,scalar_t__) ;

__attribute__((used)) static int sirfsoc_timer_set_next_event(unsigned long delta,
 struct clock_event_device *ce)
{
 int cpu = smp_processor_id();


 sirfsoc_timer_count_disable(cpu);

 writel_relaxed(0, sirfsoc_timer_base + SIRFSOC_TIMER_COUNTER_0 +
  4 * cpu);
 writel_relaxed(delta, sirfsoc_timer_base + SIRFSOC_TIMER_MATCH_0 +
  4 * cpu);


 sirfsoc_timer_count_enable(cpu);

 return 0;
}

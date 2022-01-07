
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;


 int sirfsoc_timer_count_disable (int ) ;
 int smp_processor_id () ;

__attribute__((used)) static int sirfsoc_timer_shutdown(struct clock_event_device *evt)
{
 sirfsoc_timer_count_disable(smp_processor_id());
 return 0;
}

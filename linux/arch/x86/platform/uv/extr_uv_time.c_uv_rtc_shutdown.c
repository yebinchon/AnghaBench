
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int cpumask; } ;


 int cpumask_first (int ) ;
 int uv_rtc_unset_timer (int,int) ;

__attribute__((used)) static int uv_rtc_shutdown(struct clock_event_device *evt)
{
 int ced_cpu = cpumask_first(evt->cpumask);

 uv_rtc_unset_timer(ced_cpu, 1);
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event {int dummy; } ;


 int active_events ;
 int atomic_dec (int *) ;
 int x86_release_hardware () ;

__attribute__((used)) static void hw_perf_event_destroy(struct perf_event *event)
{
 x86_release_hardware();
 atomic_dec(&active_events);
}

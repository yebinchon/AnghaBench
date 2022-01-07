
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event {int dummy; } ;


 int msr_event_update (struct perf_event*) ;

__attribute__((used)) static void msr_event_stop(struct perf_event *event, int flags)
{
 msr_event_update(event);
}

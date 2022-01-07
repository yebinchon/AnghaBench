
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event {int dummy; } ;


 int h_24x7_event_read (struct perf_event*) ;

__attribute__((used)) static void h_24x7_event_stop(struct perf_event *event, int flags)
{
 h_24x7_event_read(event);
}

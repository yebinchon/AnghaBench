
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct perf_event {int count; } ;


 int local64_add (int ,int *) ;

__attribute__((used)) static void perf_event_count_update(struct perf_event *event, u64 count)
{
 local64_add(count, &event->count);
}

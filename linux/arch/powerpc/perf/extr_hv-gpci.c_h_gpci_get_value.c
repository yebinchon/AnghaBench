
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct perf_event {int dummy; } ;


 int event_get_counter_info_version (struct perf_event*) ;
 int event_get_length (struct perf_event*) ;
 int event_get_offset (struct perf_event*) ;
 int event_get_request (struct perf_event*) ;
 int event_get_secondary_index (struct perf_event*) ;
 int event_get_starting_index (struct perf_event*) ;
 unsigned long single_gpci_request (int ,int ,int ,int ,int ,int ,int *) ;

__attribute__((used)) static u64 h_gpci_get_value(struct perf_event *event)
{
 u64 count;
 unsigned long ret = single_gpci_request(event_get_request(event),
     event_get_starting_index(event),
     event_get_secondary_index(event),
     event_get_counter_info_version(event),
     event_get_offset(event),
     event_get_length(event),
     &count);
 if (ret)
  return 0;
 return count;
}

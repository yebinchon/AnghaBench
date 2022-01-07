
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct perf_event {int dummy; } ;


 scalar_t__ single_24x7_request (struct perf_event*,int *) ;

__attribute__((used)) static u64 h_24x7_get_value(struct perf_event *event)
{
 u64 ct;

 if (single_24x7_request(event, &ct))

  return 0;

 return ct;
}

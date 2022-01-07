
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct perf_event {int dummy; } ;


 int dump_trace_imc_data (struct perf_event*) ;
 scalar_t__ get_trace_imc_event_base_addr () ;
 int memset (void*,int ,int) ;

__attribute__((used)) static void trace_imc_event_stop(struct perf_event *event, int flags)
{
 u64 local_mem = get_trace_imc_event_base_addr();
 dump_trace_imc_data(event);
 memset((void *)local_mem, 0, sizeof(u64));
}

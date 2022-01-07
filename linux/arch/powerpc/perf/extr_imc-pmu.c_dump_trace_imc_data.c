
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct trace_imc_data {int dummy; } ;
struct perf_sample_data {int dummy; } ;
struct perf_output_handle {int dummy; } ;
struct perf_event_header {int size; } ;
struct perf_event {int dummy; } ;


 scalar_t__ get_trace_imc_event_base_addr () ;
 scalar_t__ perf_output_begin (struct perf_output_handle*,struct perf_event*,int ) ;
 int perf_output_end (struct perf_output_handle*) ;
 int perf_output_sample (struct perf_output_handle*,struct perf_event_header*,struct perf_sample_data*,struct perf_event*) ;
 int trace_imc_mem_size ;
 int trace_imc_prepare_sample (struct trace_imc_data*,struct perf_sample_data*,int *,struct perf_event_header*,struct perf_event*) ;

__attribute__((used)) static void dump_trace_imc_data(struct perf_event *event)
{
 struct trace_imc_data *mem;
 int i, ret;
 u64 prev_tb = 0;

 mem = (struct trace_imc_data *)get_trace_imc_event_base_addr();
 for (i = 0; i < (trace_imc_mem_size / sizeof(struct trace_imc_data));
  i++, mem++) {
  struct perf_sample_data data;
  struct perf_event_header header;

  ret = trace_imc_prepare_sample(mem, &data, &prev_tb, &header, event);
  if (ret)
   break;
  else {

   struct perf_output_handle handle;

   if (perf_output_begin(&handle, event, header.size))
    return;

   perf_output_sample(&handle, &header, &data, event);
   perf_output_end(&handle);
  }
 }
}

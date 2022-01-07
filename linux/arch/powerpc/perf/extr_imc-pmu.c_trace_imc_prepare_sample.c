
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct trace_imc_data {int ip; int tb2; int tb1; } ;
struct perf_sample_data {int ip; int period; } ;
struct perf_event_header {int misc; scalar_t__ size; int type; } ;
struct TYPE_2__ {int last_period; } ;
struct perf_event {scalar_t__ header_size; TYPE_1__ hw; } ;


 int EINVAL ;
 int IMC_TRACE_RECORD_TB1_MASK ;
 int PERF_RECORD_MISC_KERNEL ;
 int PERF_RECORD_MISC_USER ;
 int PERF_RECORD_SAMPLE ;
 int READ_ONCE (int ) ;
 int be64_to_cpu (int ) ;
 scalar_t__ is_kernel_addr (int) ;
 int perf_event_header__init_id (struct perf_event_header*,struct perf_sample_data*,struct perf_event*) ;

__attribute__((used)) static int trace_imc_prepare_sample(struct trace_imc_data *mem,
        struct perf_sample_data *data,
        u64 *prev_tb,
        struct perf_event_header *header,
        struct perf_event *event)
{

 if (be64_to_cpu(READ_ONCE(mem->tb1)) > *prev_tb)
  *prev_tb = be64_to_cpu(READ_ONCE(mem->tb1));
 else
  return -EINVAL;

 if ((be64_to_cpu(READ_ONCE(mem->tb1)) & IMC_TRACE_RECORD_TB1_MASK) !=
    be64_to_cpu(READ_ONCE(mem->tb2)))
  return -EINVAL;


 data->ip = be64_to_cpu(READ_ONCE(mem->ip));
 data->period = event->hw.last_period;

 header->type = PERF_RECORD_SAMPLE;
 header->size = sizeof(*header) + event->header_size;
 header->misc = 0;

 if (is_kernel_addr(data->ip))
  header->misc |= PERF_RECORD_MISC_KERNEL;
 else
  header->misc |= PERF_RECORD_MISC_USER;

 perf_event_header__init_id(header, data, event);

 return 0;
}

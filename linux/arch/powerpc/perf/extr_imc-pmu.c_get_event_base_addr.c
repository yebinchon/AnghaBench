
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_4__ {scalar_t__ event_base; } ;
struct TYPE_3__ {int config; } ;
struct perf_event {TYPE_2__ hw; TYPE_1__ attr; } ;


 int IMC_EVENT_OFFSET_MASK ;
 scalar_t__ is_thread_imc_pmu (struct perf_event*) ;
 scalar_t__ per_cpu (int ,int ) ;
 int smp_processor_id () ;
 int thread_imc_mem ;

__attribute__((used)) static u64 * get_event_base_addr(struct perf_event *event)
{
 u64 addr;

 if (is_thread_imc_pmu(event)) {
  addr = (u64)per_cpu(thread_imc_mem, smp_processor_id());
  return (u64 *)(addr + (event->attr.config & IMC_EVENT_OFFSET_MASK));
 }

 return (u64 *)event->hw.event_base;
}

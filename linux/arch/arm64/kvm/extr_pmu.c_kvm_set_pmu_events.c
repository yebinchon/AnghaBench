
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct perf_event_attr {int exclude_guest; int exclude_host; } ;
struct TYPE_2__ {int events_guest; int events_host; } ;
struct kvm_host_data {TYPE_1__ pmu_events; } ;


 int kvm_host_data ;
 int kvm_pmu_switch_needed (struct perf_event_attr*) ;
 struct kvm_host_data* this_cpu_ptr (int *) ;

void kvm_set_pmu_events(u32 set, struct perf_event_attr *attr)
{
 struct kvm_host_data *ctx = this_cpu_ptr(&kvm_host_data);

 if (!kvm_pmu_switch_needed(attr))
  return;

 if (!attr->exclude_host)
  ctx->pmu_events.events_host |= set;
 if (!attr->exclude_guest)
  ctx->pmu_events.events_guest |= set;
}

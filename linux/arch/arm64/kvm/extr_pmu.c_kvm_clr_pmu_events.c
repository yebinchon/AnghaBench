
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int events_guest; int events_host; } ;
struct kvm_host_data {TYPE_1__ pmu_events; } ;


 int kvm_host_data ;
 struct kvm_host_data* this_cpu_ptr (int *) ;

void kvm_clr_pmu_events(u32 clr)
{
 struct kvm_host_data *ctx = this_cpu_ptr(&kvm_host_data);

 ctx->pmu_events.events_host &= ~clr;
 ctx->pmu_events.events_guest &= ~clr;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {void* idx; } ;
struct TYPE_5__ {void* idx; } ;
struct TYPE_7__ {int idx; int last_cpu; unsigned long long last_tag; TYPE_2__ branch_reg; TYPE_1__ extra_reg; } ;
struct perf_event {TYPE_3__ hw; int destroy; } ;
struct TYPE_8__ {int (* hw_config ) (struct perf_event*) ;} ;


 int ENODEV ;
 void* EXTRA_REG_NONE ;
 int active_events ;
 int atomic_inc (int *) ;
 int hw_perf_event_destroy ;
 int stub1 (struct perf_event*) ;
 TYPE_4__ x86_pmu ;
 int x86_pmu_initialized () ;
 int x86_reserve_hardware () ;

__attribute__((used)) static int __x86_pmu_event_init(struct perf_event *event)
{
 int err;

 if (!x86_pmu_initialized())
  return -ENODEV;

 err = x86_reserve_hardware();
 if (err)
  return err;

 atomic_inc(&active_events);
 event->destroy = hw_perf_event_destroy;

 event->hw.idx = -1;
 event->hw.last_cpu = -1;
 event->hw.last_tag = ~0ULL;


 event->hw.extra_reg.idx = EXTRA_REG_NONE;
 event->hw.branch_reg.idx = EXTRA_REG_NONE;

 return x86_pmu.hw_config(event);
}

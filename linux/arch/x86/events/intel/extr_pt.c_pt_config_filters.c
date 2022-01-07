
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
struct pt_filters {unsigned int nr_filters; struct pt_filter* filter; } ;
struct pt_filter {scalar_t__ msr_a; scalar_t__ msr_b; int config; } ;
struct TYPE_7__ {TYPE_2__* filter; } ;
struct pt {TYPE_3__ filters; } ;
struct TYPE_5__ {struct pt_filters* addr_filters; } ;
struct perf_event {TYPE_1__ hw; } ;
struct TYPE_8__ {int reg_off; int msr_b; int msr_a; } ;
struct TYPE_6__ {scalar_t__ msr_a; scalar_t__ msr_b; } ;


 int perf_event_addr_filters_sync (struct perf_event*) ;
 TYPE_4__* pt_address_ranges ;
 int pt_ctx ;
 struct pt* this_cpu_ptr (int *) ;
 int wrmsrl (int ,scalar_t__) ;

__attribute__((used)) static u64 pt_config_filters(struct perf_event *event)
{
 struct pt_filters *filters = event->hw.addr_filters;
 struct pt *pt = this_cpu_ptr(&pt_ctx);
 unsigned int range = 0;
 u64 rtit_ctl = 0;

 if (!filters)
  return 0;

 perf_event_addr_filters_sync(event);

 for (range = 0; range < filters->nr_filters; range++) {
  struct pt_filter *filter = &filters->filter[range];
  if (pt->filters.filter[range].msr_a != filter->msr_a) {
   wrmsrl(pt_address_ranges[range].msr_a, filter->msr_a);
   pt->filters.filter[range].msr_a = filter->msr_a;
  }

  if (pt->filters.filter[range].msr_b != filter->msr_b) {
   wrmsrl(pt_address_ranges[range].msr_b, filter->msr_b);
   pt->filters.filter[range].msr_b = filter->msr_b;
  }

  rtit_ctl |= filter->config << pt_address_ranges[range].reg_off;
 }

 return rtit_ctl;
}

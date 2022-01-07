
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {scalar_t__ event_base; } ;
struct perf_event {TYPE_1__ hw; } ;
struct intel_uncore_box {scalar_t__ io_addr; } ;


 int readq (scalar_t__) ;

u64 uncore_mmio_read_counter(struct intel_uncore_box *box,
        struct perf_event *event)
{
 if (!box->io_addr)
  return 0;

 return readq(box->io_addr + event->hw.event_base);
}

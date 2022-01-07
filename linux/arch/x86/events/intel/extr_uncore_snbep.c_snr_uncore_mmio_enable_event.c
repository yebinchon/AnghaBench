
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw_perf_event {int config; scalar_t__ config_base; } ;
struct perf_event {struct hw_perf_event hw; } ;
struct intel_uncore_box {scalar_t__ io_addr; } ;


 int SNBEP_PMON_CTL_EN ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void snr_uncore_mmio_enable_event(struct intel_uncore_box *box,
        struct perf_event *event)
{
 struct hw_perf_event *hwc = &event->hw;

 if (!box->io_addr)
  return;

 writel(hwc->config | SNBEP_PMON_CTL_EN,
        box->io_addr + hwc->config_base);
}

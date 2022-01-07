
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int u32 ;
struct hw_perf_event {scalar_t__ event_base; } ;
struct perf_event {struct hw_perf_event hw; } ;
struct pci_dev {int dummy; } ;
struct intel_uncore_box {struct pci_dev* pci_dev; } ;


 int pci_read_config_dword (struct pci_dev*,scalar_t__,int *) ;

__attribute__((used)) static u64 snbep_uncore_pci_read_counter(struct intel_uncore_box *box, struct perf_event *event)
{
 struct pci_dev *pdev = box->pci_dev;
 struct hw_perf_event *hwc = &event->hw;
 u64 count = 0;

 pci_read_config_dword(pdev, hwc->event_base, (u32 *)&count);
 pci_read_config_dword(pdev, hwc->event_base + 4, (u32 *)&count + 1);

 return count;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw_perf_event {size_t idx; int config; } ;
struct perf_event {struct hw_perf_event hw; } ;
struct pci_dev {int dummy; } ;
struct intel_uncore_box {struct pci_dev* pci_dev; } ;


 int SNBEP_PMON_CTL_EN ;
 int * ivbep_uncore_irp_ctls ;
 int pci_write_config_dword (struct pci_dev*,int ,int) ;

__attribute__((used)) static void ivbep_uncore_irp_enable_event(struct intel_uncore_box *box, struct perf_event *event)
{
 struct pci_dev *pdev = box->pci_dev;
 struct hw_perf_event *hwc = &event->hw;

 pci_write_config_dword(pdev, ivbep_uncore_irp_ctls[hwc->idx],
          hwc->config | SNBEP_PMON_CTL_EN);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int config; } ;
struct hw_perf_event {int config; int config_base; } ;
struct perf_event {TYPE_1__ attr; struct hw_perf_event hw; } ;
struct pci_dev {int dummy; } ;
struct intel_uncore_box {struct pci_dev* pci_dev; } ;


 int KNL_PMON_FIXED_CTL_EN ;
 int SNBEP_PMON_CTL_EN ;
 int SNBEP_PMON_CTL_EV_SEL_MASK ;
 int UNCORE_FIXED_EVENT ;
 int pci_write_config_dword (struct pci_dev*,int ,int) ;

__attribute__((used)) static void knl_uncore_imc_enable_event(struct intel_uncore_box *box,
     struct perf_event *event)
{
 struct pci_dev *pdev = box->pci_dev;
 struct hw_perf_event *hwc = &event->hw;

 if ((event->attr.config & SNBEP_PMON_CTL_EV_SEL_MASK)
       == UNCORE_FIXED_EVENT)
  pci_write_config_dword(pdev, hwc->config_base,
           hwc->config | KNL_PMON_FIXED_CTL_EN);
 else
  pci_write_config_dword(pdev, hwc->config_base,
           hwc->config | SNBEP_PMON_CTL_EN);
}

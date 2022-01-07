
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct intel_uncore_box {struct pci_dev* pci_dev; } ;


 int SNBEP_PMON_BOX_CTL_INT ;
 int pci_write_config_dword (struct pci_dev*,int,int ) ;
 int uncore_pci_box_ctl (struct intel_uncore_box*) ;

__attribute__((used)) static void snbep_uncore_pci_init_box(struct intel_uncore_box *box)
{
 struct pci_dev *pdev = box->pci_dev;
 int box_ctl = uncore_pci_box_ctl(box);

 pci_write_config_dword(pdev, box_ctl, SNBEP_PMON_BOX_CTL_INT);
}

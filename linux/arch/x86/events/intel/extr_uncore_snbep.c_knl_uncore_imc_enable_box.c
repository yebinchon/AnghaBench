
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct intel_uncore_box {struct pci_dev* pci_dev; } ;


 int pci_write_config_dword (struct pci_dev*,int,int ) ;
 int uncore_pci_box_ctl (struct intel_uncore_box*) ;

__attribute__((used)) static void knl_uncore_imc_enable_box(struct intel_uncore_box *box)
{
 struct pci_dev *pdev = box->pci_dev;
 int box_ctl = uncore_pci_box_ctl(box);

 pci_write_config_dword(pdev, box_ctl, 0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct eeh_pe {int dummy; } ;
struct eeh_dev {struct eeh_pe* pe; } ;
struct TYPE_2__ {int (* reset ) (struct eeh_pe*,int ) ;} ;


 int EEH_RESET_HOT ;
 TYPE_1__* eeh_ops ;
 struct eeh_dev* pci_dev_to_eeh_dev (struct pci_dev*) ;
 int stub1 (struct eeh_pe*,int ) ;

__attribute__((used)) static void pnv_npu_disable_device(struct pci_dev *pdev)
{
 struct eeh_dev *edev = pci_dev_to_eeh_dev(pdev);
 struct eeh_pe *eehpe = edev ? edev->pe : ((void*)0);

 if (eehpe && eeh_ops && eeh_ops->reset)
  eeh_ops->reset(eehpe, EEH_RESET_HOT);
}

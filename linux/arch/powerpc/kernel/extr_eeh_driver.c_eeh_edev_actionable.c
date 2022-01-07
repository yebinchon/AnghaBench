
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct eeh_dev {int pe; TYPE_1__* pdev; } ;
struct TYPE_2__ {scalar_t__ error_state; } ;


 scalar_t__ eeh_dev_removed (struct eeh_dev*) ;
 scalar_t__ eeh_pe_passed (int ) ;
 scalar_t__ pci_channel_io_perm_failure ;

__attribute__((used)) static bool eeh_edev_actionable(struct eeh_dev *edev)
{
 if (!edev->pdev)
  return 0;
 if (edev->pdev->error_state == pci_channel_io_perm_failure)
  return 0;
 if (eeh_dev_removed(edev))
  return 0;
 if (eeh_pe_passed(edev->pe))
  return 0;

 return 1;
}

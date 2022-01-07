
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_driver {TYPE_1__* err_handler; int name; } ;
struct pci_dev {int dummy; } ;
struct eeh_dev {int pdev; int in_error; } ;
typedef enum pci_ers_result { ____Placeholder_pci_ers_result } pci_ers_result ;
struct TYPE_4__ {int (* notify_resume ) (scalar_t__) ;} ;
struct TYPE_3__ {int (* resume ) (struct pci_dev*) ;} ;


 int PCI_ERS_RESULT_NONE ;
 int PCI_ERS_RESULT_RECOVERED ;
 scalar_t__ eeh_dev_to_pdn (struct eeh_dev*) ;
 int eeh_edev_info (struct eeh_dev*,char*,int ) ;
 TYPE_2__* eeh_ops ;
 int pci_uevent_ers (int ,int ) ;
 int stub1 (struct pci_dev*) ;
 int stub2 (scalar_t__) ;

__attribute__((used)) static enum pci_ers_result eeh_report_resume(struct eeh_dev *edev,
          struct pci_dev *pdev,
          struct pci_driver *driver)
{
 if (!driver->err_handler->resume || !edev->in_error)
  return PCI_ERS_RESULT_NONE;

 eeh_edev_info(edev, "Invoking %s->resume()", driver->name);
 driver->err_handler->resume(pdev);

 pci_uevent_ers(edev->pdev, PCI_ERS_RESULT_RECOVERED);




 return PCI_ERS_RESULT_NONE;
}

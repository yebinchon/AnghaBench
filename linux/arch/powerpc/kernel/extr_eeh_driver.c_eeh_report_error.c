
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_driver {TYPE_1__* err_handler; int name; } ;
struct pci_dev {int dummy; } ;
struct eeh_dev {int in_error; } ;
typedef enum pci_ers_result { ____Placeholder_pci_ers_result } pci_ers_result ;
struct TYPE_2__ {int (* error_detected ) (struct pci_dev*,int ) ;} ;


 int PCI_ERS_RESULT_NONE ;
 int eeh_edev_info (struct eeh_dev*,char*,int ) ;
 int pci_channel_io_frozen ;
 int pci_uevent_ers (struct pci_dev*,int) ;
 int stub1 (struct pci_dev*,int ) ;

__attribute__((used)) static enum pci_ers_result eeh_report_error(struct eeh_dev *edev,
         struct pci_dev *pdev,
         struct pci_driver *driver)
{
 enum pci_ers_result rc;

 if (!driver->err_handler->error_detected)
  return PCI_ERS_RESULT_NONE;

 eeh_edev_info(edev, "Invoking %s->error_detected(IO frozen)",
        driver->name);
 rc = driver->err_handler->error_detected(pdev, pci_channel_io_frozen);

 edev->in_error = 1;
 pci_uevent_ers(pdev, PCI_ERS_RESULT_NONE);
 return rc;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct driver_data {int dd_flag; } ;


 int EFAULT ;
 int MTIP_DDF_RESUME_BIT ;
 int PCI_D0 ;
 int clear_bit (int ,int *) ;
 int dev_err (int *,char*) ;
 int mtip_block_resume (struct driver_data*) ;
 struct driver_data* pci_get_drvdata (struct pci_dev*) ;
 int pci_restore_state (struct pci_dev*) ;
 int pci_set_master (struct pci_dev*) ;
 int pci_set_power_state (struct pci_dev*,int ) ;
 int pcim_enable_device (struct pci_dev*) ;

__attribute__((used)) static int mtip_pci_resume(struct pci_dev *pdev)
{
 int rv = 0;
 struct driver_data *dd;

 dd = pci_get_drvdata(pdev);
 if (!dd) {
  dev_err(&pdev->dev,
   "Driver private datastructure is NULL\n");
  return -EFAULT;
 }


 pci_set_power_state(pdev, PCI_D0);


 pci_restore_state(pdev);


 rv = pcim_enable_device(pdev);
 if (rv < 0) {
  dev_err(&pdev->dev,
   "Failed to enable card during resume\n");
  goto err;
 }
 pci_set_master(pdev);





 rv = mtip_block_resume(dd);
 if (rv < 0)
  dev_err(&pdev->dev, "Unable to resume\n");

err:
 clear_bit(MTIP_DDF_RESUME_BIT, &dd->dd_flag);

 return rv;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_device_id {int driver_data; } ;
struct pci_dev {int dev; } ;


 int dev_err (int *,char*) ;
 int iosf_mbi_sem_address ;
 int mbi_pdev ;
 int pci_dev_get (struct pci_dev*) ;
 int pci_enable_device (struct pci_dev*) ;

__attribute__((used)) static int iosf_mbi_probe(struct pci_dev *pdev,
     const struct pci_device_id *dev_id)
{
 int ret;

 ret = pci_enable_device(pdev);
 if (ret < 0) {
  dev_err(&pdev->dev, "error: could not enable device\n");
  return ret;
 }

 mbi_pdev = pci_dev_get(pdev);
 iosf_mbi_sem_address = dev_id->driver_data;

 return 0;
}

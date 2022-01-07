
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; int devfn; } ;
struct npu_link {scalar_t__* fn_desired_actags; } ;


 int EINVAL ;
 int ENODEV ;
 int PCI_FUNC (int ) ;
 int PNV_OCXL_PASID_MAX ;
 int dev_dbg (int *,char*,int) ;
 int dev_err (int *,char*) ;
 struct npu_link* find_link (struct pci_dev*) ;
 int links_list_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int pnv_ocxl_get_pasid_count(struct pci_dev *dev, int *count)
{
 struct npu_link *link;
 int i, rc = -EINVAL;
 mutex_lock(&links_list_lock);

 link = find_link(dev);
 if (!link) {
  dev_err(&dev->dev, "actag information not found\n");
  mutex_unlock(&links_list_lock);
  return -ENODEV;
 }

 for (i = 0; i < 8; i++)
  if (link->fn_desired_actags[i] && (i == PCI_FUNC(dev->devfn))) {
   *count = PNV_OCXL_PASID_MAX;
   rc = 0;
   break;
  }

 mutex_unlock(&links_list_lock);
 dev_dbg(&dev->dev, "%d PASIDs available for function\n",
  rc ? 0 : *count);
 return rc;
}

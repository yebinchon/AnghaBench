
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct pci_dev {int devfn; int dev; } ;
struct npu_link {int * fn_desired_actags; TYPE_1__* fn_actags; int assignment_done; } ;
struct TYPE_2__ {int count; int start; } ;


 int ENODEV ;
 size_t PCI_FUNC (int ) ;
 int assign_actags (struct npu_link*) ;
 int dev_err (int *,char*) ;
 struct npu_link* find_link (struct pci_dev*) ;
 int links_list_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int pnv_ocxl_get_actag(struct pci_dev *dev, u16 *base, u16 *enabled,
  u16 *supported)
{
 struct npu_link *link;

 mutex_lock(&links_list_lock);

 link = find_link(dev);
 if (!link) {
  dev_err(&dev->dev, "actag information not found\n");
  mutex_unlock(&links_list_lock);
  return -ENODEV;
 }






 if (!link->assignment_done)
  assign_actags(link);

 *base = link->fn_actags[PCI_FUNC(dev->devfn)].start;
 *enabled = link->fn_actags[PCI_FUNC(dev->devfn)].count;
 *supported = link->fn_desired_actags[PCI_FUNC(dev->devfn)];

 mutex_unlock(&links_list_lock);
 return 0;
}

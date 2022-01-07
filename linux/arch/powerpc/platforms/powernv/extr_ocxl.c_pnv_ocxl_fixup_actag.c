
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnv_phb {scalar_t__ type; } ;
struct pci_dev {int devfn; int dev; int bus; } ;
struct pci_controller {struct pnv_phb* private_data; } ;
struct npu_link {scalar_t__* fn_desired_actags; } ;


 size_t PCI_FUNC (int ) ;
 scalar_t__ PNV_PHB_NPU_OCAPI ;
 int dev_dbg (int *,char*,...) ;
 int dev_warn (int *,char*) ;
 struct npu_link* find_link (struct pci_dev*) ;
 int get_actag_count (struct pci_dev*,int,int*) ;
 int get_max_afu_index (struct pci_dev*,int*) ;
 int links_list_lock ;
 int machine_is (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct pci_controller* pci_bus_to_host (int ) ;
 int powernv ;

__attribute__((used)) static void pnv_ocxl_fixup_actag(struct pci_dev *dev)
{
 struct pci_controller *hose = pci_bus_to_host(dev->bus);
 struct pnv_phb *phb = hose->private_data;
 struct npu_link *link;
 int rc, afu_idx = -1, i, actag;

 if (!machine_is(powernv))
  return;

 if (phb->type != PNV_PHB_NPU_OCAPI)
  return;

 mutex_lock(&links_list_lock);

 link = find_link(dev);
 if (!link) {
  dev_warn(&dev->dev, "couldn't update actag information\n");
  mutex_unlock(&links_list_lock);
  return;
 }





 rc = get_max_afu_index(dev, &afu_idx);
 if (rc) {

  dev_dbg(&dev->dev, "couldn't find AFU information\n");
  afu_idx = -1;
 }

 link->fn_desired_actags[PCI_FUNC(dev->devfn)] = 0;
 for (i = 0; i <= afu_idx; i++) {




  rc = get_actag_count(dev, i, &actag);
  if (rc)
   continue;
  link->fn_desired_actags[PCI_FUNC(dev->devfn)] += actag;
 }
 dev_dbg(&dev->dev, "total actags for function: %d\n",
  link->fn_desired_actags[PCI_FUNC(dev->devfn)]);

 mutex_unlock(&links_list_lock);
}

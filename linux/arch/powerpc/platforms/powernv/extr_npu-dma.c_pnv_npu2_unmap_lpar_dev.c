
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnv_phb {int opal_id; } ;
struct pci_dev {int dev; int bus; } ;
struct pci_controller {struct pnv_phb* private_data; } ;


 int ENODEV ;
 int dev_dbg (int *,char*,int ) ;
 int dev_err (int *,char*,int) ;
 int opal_npu_destroy_context (int ,int ,int ) ;
 int opal_npu_map_lpar (int ,int ,int ,int ) ;
 struct pci_controller* pci_bus_to_host (int ) ;
 int pci_dev_id (struct pci_dev*) ;
 struct pci_dev* pnv_pci_get_npu_dev (struct pci_dev*,int ) ;

int pnv_npu2_unmap_lpar_dev(struct pci_dev *gpdev)
{
 int ret;
 struct pci_dev *npdev = pnv_pci_get_npu_dev(gpdev, 0);
 struct pci_controller *hose;
 struct pnv_phb *nphb;

 if (!npdev)
  return -ENODEV;

 hose = pci_bus_to_host(npdev->bus);
 nphb = hose->private_data;

 dev_dbg(&gpdev->dev, "destroy context opalid=%llu\n",
   nphb->opal_id);
 ret = opal_npu_destroy_context(nphb->opal_id, 0 ,
           pci_dev_id(gpdev));
 if (ret < 0) {
  dev_err(&gpdev->dev, "Failed to destroy context: %d\n", ret);
  return ret;
 }


 dev_dbg(&gpdev->dev, "Map LPAR opalid=%llu lparid=0\n", nphb->opal_id);
 ret = opal_npu_map_lpar(nphb->opal_id, pci_dev_id(gpdev), 0 ,
    0 );
 if (ret)
  dev_err(&gpdev->dev, "Error %d mapping device to LPAR\n", ret);

 return ret;
}

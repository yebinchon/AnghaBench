
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnv_phb {int opal_id; } ;
struct pci_dev {int dev; int bus; } ;
struct pci_controller {struct pnv_phb* private_data; } ;


 int ENODEV ;
 int dev_dbg (int *,char*,int ,unsigned long) ;
 int dev_err (int *,char*,int) ;
 int opal_npu_init_context (int ,int ,unsigned long,int ) ;
 int opal_npu_map_lpar (int ,int ,unsigned int,int ) ;
 struct pci_controller* pci_bus_to_host (int ) ;
 int pci_dev_id (struct pci_dev*) ;
 struct pci_dev* pnv_pci_get_npu_dev (struct pci_dev*,int ) ;

int pnv_npu2_map_lpar_dev(struct pci_dev *gpdev, unsigned int lparid,
  unsigned long msr)
{
 int ret;
 struct pci_dev *npdev = pnv_pci_get_npu_dev(gpdev, 0);
 struct pci_controller *hose;
 struct pnv_phb *nphb;

 if (!npdev)
  return -ENODEV;

 hose = pci_bus_to_host(npdev->bus);
 nphb = hose->private_data;

 dev_dbg(&gpdev->dev, "Map LPAR opalid=%llu lparid=%u\n",
   nphb->opal_id, lparid);




 ret = opal_npu_map_lpar(nphb->opal_id, pci_dev_id(gpdev), lparid,
    0 );
 if (ret) {
  dev_err(&gpdev->dev, "Error %d mapping device to LPAR\n", ret);
  return ret;
 }

 dev_dbg(&gpdev->dev, "init context opalid=%llu msr=%lx\n",
   nphb->opal_id, msr);
 ret = opal_npu_init_context(nphb->opal_id, 0 , msr,
        pci_dev_id(gpdev));
 if (ret < 0)
  dev_err(&gpdev->dev, "Failed to init context: %d\n", ret);
 else
  ret = 0;

 return 0;
}

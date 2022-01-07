
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct pnv_phb {int opal_id; } ;
struct pci_dev {int dev; int devfn; int bus; } ;
struct pci_controller {struct pnv_phb* private_data; } ;


 int EINVAL ;
 int PNV_OCXL_TL_RATE_BUF_SIZE ;
 int dev_err (int *,char*,int) ;
 int opal_npu_tl_set (int ,int ,long,int ,int) ;
 struct pci_controller* pci_bus_to_host (int ) ;

int pnv_ocxl_set_tl_conf(struct pci_dev *dev, long cap,
   uint64_t rate_buf_phys, int rate_buf_size)
{
 struct pci_controller *hose = pci_bus_to_host(dev->bus);
 struct pnv_phb *phb = hose->private_data;
 int rc;

 if (rate_buf_size != PNV_OCXL_TL_RATE_BUF_SIZE)
  return -EINVAL;

 rc = opal_npu_tl_set(phb->opal_id, dev->devfn, cap,
   rate_buf_phys, rate_buf_size);
 if (rc) {
  dev_err(&dev->dev, "Can't configure host TL: %d\n", rc);
  return -EINVAL;
 }
 return 0;
}

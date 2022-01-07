
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct zpci_dev {int fid; int fh; } ;


 int CLP_SET_ENABLE_MIO ;
 int CLP_SET_ENABLE_PCI_FN ;
 int clp_disable_fh (struct zpci_dev*) ;
 int clp_set_pci_fn (int *,int ,int ) ;
 int zpci_dbg (int,char*,int ,int ,int) ;
 scalar_t__ zpci_use_mio (struct zpci_dev*) ;

int clp_enable_fh(struct zpci_dev *zdev, u8 nr_dma_as)
{
 u32 fh = zdev->fh;
 int rc;

 rc = clp_set_pci_fn(&fh, nr_dma_as, CLP_SET_ENABLE_PCI_FN);
 zpci_dbg(3, "ena fid:%x, fh:%x, rc:%d\n", zdev->fid, fh, rc);
 if (rc)
  goto out;

 zdev->fh = fh;
 if (zpci_use_mio(zdev)) {
  rc = clp_set_pci_fn(&fh, nr_dma_as, CLP_SET_ENABLE_MIO);
  zpci_dbg(3, "ena mio fid:%x, fh:%x, rc:%d\n", zdev->fid, fh, rc);
  if (rc)
   clp_disable_fh(zdev);
 }
out:
 return rc;
}

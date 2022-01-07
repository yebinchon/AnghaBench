
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct zpci_dev {int fh; int fid; } ;


 int CLP_SET_DISABLE_PCI_FN ;
 int clp_set_pci_fn (int *,int ,int ) ;
 int zdev_enabled (struct zpci_dev*) ;
 int zpci_dbg (int,char*,int ,int ,int) ;

int clp_disable_fh(struct zpci_dev *zdev)
{
 u32 fh = zdev->fh;
 int rc;

 if (!zdev_enabled(zdev))
  return 0;

 rc = clp_set_pci_fn(&fh, 0, CLP_SET_DISABLE_PCI_FN);
 zpci_dbg(3, "dis fid:%x, fh:%x, rc:%d\n", zdev->fid, fh, rc);
 if (!rc)
  zdev->fh = fh;

 return rc;
}

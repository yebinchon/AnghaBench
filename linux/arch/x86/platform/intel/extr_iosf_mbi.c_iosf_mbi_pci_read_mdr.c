
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_4__ {int dev; } ;


 int ENODEV ;
 int MBI_MCRX_OFFSET ;
 int MBI_MCR_OFFSET ;
 int MBI_MDR_OFFSET ;
 int dev_err (int *,char*,int) ;
 TYPE_1__* mbi_pdev ;
 int pci_read_config_dword (TYPE_1__*,int ,scalar_t__*) ;
 int pci_write_config_dword (TYPE_1__*,int ,scalar_t__) ;

__attribute__((used)) static int iosf_mbi_pci_read_mdr(u32 mcrx, u32 mcr, u32 *mdr)
{
 int result;

 if (!mbi_pdev)
  return -ENODEV;

 if (mcrx) {
  result = pci_write_config_dword(mbi_pdev, MBI_MCRX_OFFSET,
      mcrx);
  if (result < 0)
   goto fail_read;
 }

 result = pci_write_config_dword(mbi_pdev, MBI_MCR_OFFSET, mcr);
 if (result < 0)
  goto fail_read;

 result = pci_read_config_dword(mbi_pdev, MBI_MDR_OFFSET, mdr);
 if (result < 0)
  goto fail_read;

 return 0;

fail_read:
 dev_err(&mbi_pdev->dev, "PCI config access failed with %d\n", result);
 return result;
}

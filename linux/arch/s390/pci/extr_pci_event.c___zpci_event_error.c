
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zpci_dev {int bus; } ;
struct zpci_ccdf_err {int fid; int pec; } ;
struct pci_dev {int error_state; } ;


 int ZPCI_DEVFN ;
 struct zpci_dev* get_zdev_by_fid (int ) ;
 int pci_channel_io_perm_failure ;
 int pci_dev_put (struct pci_dev*) ;
 struct pci_dev* pci_get_slot (int ,int ) ;
 char* pci_name (struct pci_dev*) ;
 int pr_err (char*,char*,int ,int ) ;
 int zpci_err (char*) ;
 int zpci_err_hex (struct zpci_ccdf_err*,int) ;

__attribute__((used)) static void __zpci_event_error(struct zpci_ccdf_err *ccdf)
{
 struct zpci_dev *zdev = get_zdev_by_fid(ccdf->fid);
 struct pci_dev *pdev = ((void*)0);

 zpci_err("error CCDF:\n");
 zpci_err_hex(ccdf, sizeof(*ccdf));

 if (zdev)
  pdev = pci_get_slot(zdev->bus, ZPCI_DEVFN);

 pr_err("%s: Event 0x%x reports an error for PCI function 0x%x\n",
        pdev ? pci_name(pdev) : "n/a", ccdf->pec, ccdf->fid);

 if (!pdev)
  return;

 pdev->error_state = pci_channel_io_perm_failure;
 pci_dev_put(pdev);
}

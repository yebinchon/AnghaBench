
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int name; } ;
struct device {int dummy; } ;
struct pci_dev {scalar_t__ devfn; TYPE_1__* bus; struct device dev; } ;
struct TYPE_2__ {scalar_t__ number; } ;


 int DMI_PRODUCT_NAME ;
 scalar_t__ PCI_DEVFN (int,int ) ;
 int dev_info (struct device*,char*,...) ;
 int dmi_match (int ,char*) ;
 struct resource* request_mem_region (int,int,char*) ;

__attribute__((used)) static void quirk_apple_mbp_poweroff(struct pci_dev *pdev)
{
 struct device *dev = &pdev->dev;
 struct resource *res;

 if ((!dmi_match(DMI_PRODUCT_NAME, "MacBookPro11,4") &&
      !dmi_match(DMI_PRODUCT_NAME, "MacBookPro11,5")) ||
     pdev->bus->number != 0 || pdev->devfn != PCI_DEVFN(0x1c, 0))
  return;

 res = request_mem_region(0x7fa00000, 0x200000,
     "MacBook Pro poweroff workaround");
 if (res)
  dev_info(dev, "claimed %s %pR\n", res->name, res);
 else
  dev_info(dev, "can't work around MacBook Pro poweroff issue\n");
}

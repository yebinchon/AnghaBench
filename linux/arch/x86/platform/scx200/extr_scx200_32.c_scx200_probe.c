
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_device_id {int dummy; } ;
struct pci_dev {scalar_t__ device; } ;


 int EBUSY ;
 int ENODEV ;
 scalar_t__ PCI_DEVICE_ID_NS_SC1100_BRIDGE ;
 scalar_t__ PCI_DEVICE_ID_NS_SCx200_BRIDGE ;
 int SCx200_CBA_SCRATCH ;
 unsigned int SCx200_CB_BASE_FIXED ;
 int SCx200_GPIO_SIZE ;
 int pci_read_config_dword (struct pci_dev*,int ,unsigned int*) ;
 unsigned int pci_resource_start (struct pci_dev*,int ) ;
 int pr_err (char*) ;
 int pr_info (char*,unsigned int) ;
 int pr_warn (char*) ;
 int request_region (unsigned int,int ,char*) ;
 unsigned int scx200_cb_base ;
 scalar_t__ scx200_cb_probe (unsigned int) ;
 unsigned int scx200_gpio_base ;
 int scx200_init_shadow () ;

__attribute__((used)) static int scx200_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
{
 unsigned base;

 if (pdev->device == PCI_DEVICE_ID_NS_SCx200_BRIDGE ||
     pdev->device == PCI_DEVICE_ID_NS_SC1100_BRIDGE) {
  base = pci_resource_start(pdev, 0);
  pr_info("GPIO base 0x%x\n", base);

  if (!request_region(base, SCx200_GPIO_SIZE,
        "NatSemi SCx200 GPIO")) {
   pr_err("can't allocate I/O for GPIOs\n");
   return -EBUSY;
  }

  scx200_gpio_base = base;
  scx200_init_shadow();

 } else {

  if (scx200_cb_probe(SCx200_CB_BASE_FIXED)) {
   scx200_cb_base = SCx200_CB_BASE_FIXED;
  } else {
   pci_read_config_dword(pdev, SCx200_CBA_SCRATCH, &base);
   if (scx200_cb_probe(base)) {
    scx200_cb_base = base;
   } else {
    pr_warn("Configuration Block not found\n");
    return -ENODEV;
   }
  }
  pr_info("Configuration Block base 0x%x\n", scx200_cb_base);
 }

 return 0;
}

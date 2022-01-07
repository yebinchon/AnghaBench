
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct xtalk_bridge_platform_data {int masterwid; int intr_addr; scalar_t__ bridge_addr; int nasid; int io_offset; int io; int mem_offset; int mem; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct TYPE_4__ {struct device* parent; } ;
struct pci_host_bridge {int windows; int bus; int swizzle_irq; int map_irq; int * ops; scalar_t__ busnr; struct bridge_controller* sysdata; TYPE_1__ dev; } ;
struct irq_domain {int dummy; } ;
struct fwnode_handle {int dummy; } ;
struct bridge_regs {int dummy; } ;
struct TYPE_5__ {char* name; int end; int flags; scalar_t__ start; } ;
struct bridge_controller {int baddr; int intr_addr; int* pci_int; struct bridge_regs* base; int nasid; TYPE_2__ busn; struct irq_domain* domain; } ;
struct TYPE_6__ {int reg; } ;


 int BRIDGE_CTRL_IO_SWAP ;
 int BRIDGE_CTRL_MEM_SWAP ;
 int BRIDGE_CTRL_PAGE_SIZE ;
 int BRIDGE_DEV_SWAP_DIR ;
 int BRIDGE_IRR_ALL_CLR ;
 int ENODEV ;
 int ENOMEM ;
 int IORESOURCE_BUS ;
 int PCI64_ATTR_BAR ;
 int PCI_PROBE_ONLY ;
 TYPE_3__* b_device ;
 int b_dir_map ;
 int b_int_device ;
 int b_int_enable ;
 int b_int_rst_stat ;
 int b_wid_control ;
 int b_wid_int_lower ;
 int b_wid_int_upper ;
 int b_wid_tflush ;
 int bridge_clr (struct bridge_controller*,int ,int) ;
 int bridge_domain_ops ;
 int bridge_map_irq ;
 int bridge_pci_ops ;
 int bridge_read (struct bridge_controller*,int ) ;
 int bridge_set (struct bridge_controller*,int ,int) ;
 int bridge_write (struct bridge_controller*,int ,int) ;
 struct xtalk_bridge_platform_data* dev_get_platdata (struct device*) ;
 struct pci_host_bridge* devm_pci_alloc_host_bridge (struct device*,int) ;
 int devm_request_pci_bus_resources (struct device*,int *) ;
 struct fwnode_handle* irq_domain_alloc_named_fwnode (char*) ;
 struct irq_domain* irq_domain_create_hierarchy (struct irq_domain*,int ,int,struct fwnode_handle*,int *,int *) ;
 int irq_domain_free_fwnode (struct fwnode_handle*) ;
 int irq_domain_remove (struct irq_domain*) ;
 struct irq_domain* irq_get_default_host () ;
 int pci_add_resource (int *,TYPE_2__*) ;
 int pci_add_resource_offset (int *,int *,int ) ;
 int pci_bus_add_devices (int ) ;
 int pci_bus_claim_resources (int ) ;
 int pci_common_swizzle ;
 int pci_free_resource_list (int *) ;
 struct bridge_controller* pci_host_bridge_priv (struct pci_host_bridge*) ;
 int pci_scan_root_bus_bridge (struct pci_host_bridge*) ;
 int pci_set_flags (int ) ;
 int platform_set_drvdata (struct platform_device*,int ) ;

__attribute__((used)) static int bridge_probe(struct platform_device *pdev)
{
 struct xtalk_bridge_platform_data *bd = dev_get_platdata(&pdev->dev);
 struct device *dev = &pdev->dev;
 struct bridge_controller *bc;
 struct pci_host_bridge *host;
 struct irq_domain *domain, *parent;
 struct fwnode_handle *fn;
 int slot;
 int err;

 parent = irq_get_default_host();
 if (!parent)
  return -ENODEV;
 fn = irq_domain_alloc_named_fwnode("BRIDGE");
 if (!fn)
  return -ENOMEM;
 domain = irq_domain_create_hierarchy(parent, 0, 8, fn,
          &bridge_domain_ops, ((void*)0));
 irq_domain_free_fwnode(fn);
 if (!domain)
  return -ENOMEM;

 pci_set_flags(PCI_PROBE_ONLY);

 host = devm_pci_alloc_host_bridge(dev, sizeof(*bc));
 if (!host) {
  err = -ENOMEM;
  goto err_remove_domain;
 }

 bc = pci_host_bridge_priv(host);

 bc->busn.name = "Bridge PCI busn";
 bc->busn.start = 0;
 bc->busn.end = 0xff;
 bc->busn.flags = IORESOURCE_BUS;

 bc->domain = domain;

 pci_add_resource_offset(&host->windows, &bd->mem, bd->mem_offset);
 pci_add_resource_offset(&host->windows, &bd->io, bd->io_offset);
 pci_add_resource(&host->windows, &bc->busn);

 err = devm_request_pci_bus_resources(dev, &host->windows);
 if (err < 0)
  goto err_free_resource;

 bc->nasid = bd->nasid;

 bc->baddr = (u64)bd->masterwid << 60 | PCI64_ATTR_BAR;
 bc->base = (struct bridge_regs *)bd->bridge_addr;
 bc->intr_addr = bd->intr_addr;




 bridge_write(bc, b_int_rst_stat, BRIDGE_IRR_ALL_CLR);




 bridge_write(bc, b_int_device, 0x0);




 bridge_clr(bc, b_wid_control,
     BRIDGE_CTRL_IO_SWAP | BRIDGE_CTRL_MEM_SWAP);



 bridge_set(bc, b_wid_control, BRIDGE_CTRL_PAGE_SIZE);






 bridge_write(bc, b_wid_int_upper,
       ((bc->intr_addr >> 32) & 0xffff) | (bd->masterwid << 16));
 bridge_write(bc, b_wid_int_lower, bc->intr_addr & 0xffffffff);
 bridge_write(bc, b_dir_map, (bd->masterwid << 20));
 bridge_write(bc, b_int_enable, 0);

 for (slot = 0; slot < 8; slot++) {
  bridge_set(bc, b_device[slot].reg, BRIDGE_DEV_SWAP_DIR);
  bc->pci_int[slot] = -1;
 }
 bridge_read(bc, b_wid_tflush);

 host->dev.parent = dev;
 host->sysdata = bc;
 host->busnr = 0;
 host->ops = &bridge_pci_ops;
 host->map_irq = bridge_map_irq;
 host->swizzle_irq = pci_common_swizzle;

 err = pci_scan_root_bus_bridge(host);
 if (err < 0)
  goto err_free_resource;

 pci_bus_claim_resources(host->bus);
 pci_bus_add_devices(host->bus);

 platform_set_drvdata(pdev, host->bus);

 return 0;

err_free_resource:
 pci_free_resource_list(&host->windows);
err_remove_domain:
 irq_domain_remove(domain);
 return err;
}

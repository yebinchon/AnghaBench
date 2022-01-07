
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct resource {int start; int end; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct TYPE_6__ {TYPE_2__* io_resource; TYPE_1__* mem_resource; int * pci_ops; } ;
struct TYPE_5__ {char* name; int flags; scalar_t__ end; scalar_t__ start; } ;
struct TYPE_4__ {char* name; int flags; int end; int start; struct resource* parent; } ;
struct ar2315_pci_ctrl {int irq; TYPE_3__ pci_ctrl; TYPE_2__ io_res; TYPE_1__ mem_res; int domain; int cfg_mem; int mmr_mem; } ;


 int AR2315_PCICACHE_DIS ;
 int AR2315_PCIMISC_RST_MODE ;
 int AR2315_PCIRST_HIGH ;
 int AR2315_PCIRST_LOW ;
 int AR2315_PCI_CFG_SIZE ;
 int AR2315_PCI_IRQ_COUNT ;
 int AR2315_PCI_MISC_CONFIG ;
 int AR2315_PCI_UNCACHE_CFG ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_IO ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int ar2315_pci_host_setup (struct ar2315_pci_ctrl*) ;
 int ar2315_pci_irq_domain_ops ;
 int ar2315_pci_irq_init (struct ar2315_pci_ctrl*) ;
 int ar2315_pci_ops ;
 int ar2315_pci_reg_mask (struct ar2315_pci_ctrl*,int ,int ,int) ;
 int ar2315_pci_reg_read (struct ar2315_pci_ctrl*,int ) ;
 int ar2315_pci_reg_write (struct ar2315_pci_ctrl*,int ,int) ;
 int dev_err (struct device*,char*) ;
 int dev_info (struct device*,char*) ;
 int devm_ioremap_nocache (struct device*,int ,int ) ;
 int devm_ioremap_resource (struct device*,struct resource*) ;
 struct ar2315_pci_ctrl* devm_kzalloc (struct device*,int,int ) ;
 int irq_domain_add_linear (int *,int ,int *,struct ar2315_pci_ctrl*) ;
 int msleep (int) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource_byname (struct platform_device*,int ,char*) ;
 int register_pci_controller (TYPE_3__*) ;

__attribute__((used)) static int ar2315_pci_probe(struct platform_device *pdev)
{
 struct ar2315_pci_ctrl *apc;
 struct device *dev = &pdev->dev;
 struct resource *res;
 int irq, err;

 apc = devm_kzalloc(dev, sizeof(*apc), GFP_KERNEL);
 if (!apc)
  return -ENOMEM;

 irq = platform_get_irq(pdev, 0);
 if (irq < 0)
  return -EINVAL;
 apc->irq = irq;

 res = platform_get_resource_byname(pdev, IORESOURCE_MEM,
        "ar2315-pci-ctrl");
 apc->mmr_mem = devm_ioremap_resource(dev, res);
 if (IS_ERR(apc->mmr_mem))
  return PTR_ERR(apc->mmr_mem);

 res = platform_get_resource_byname(pdev, IORESOURCE_MEM,
        "ar2315-pci-ext");
 if (!res)
  return -EINVAL;

 apc->mem_res.name = "AR2315 PCI mem space";
 apc->mem_res.parent = res;
 apc->mem_res.start = res->start;
 apc->mem_res.end = res->end;
 apc->mem_res.flags = IORESOURCE_MEM;


 apc->cfg_mem = devm_ioremap_nocache(dev, res->start,
         AR2315_PCI_CFG_SIZE);
 if (!apc->cfg_mem) {
  dev_err(dev, "failed to remap PCI config space\n");
  return -ENOMEM;
 }


 ar2315_pci_reg_mask(apc, AR2315_PCI_MISC_CONFIG,
       AR2315_PCIMISC_RST_MODE,
       AR2315_PCIRST_LOW);
 msleep(100);


 ar2315_pci_reg_mask(apc, AR2315_PCI_MISC_CONFIG,
       AR2315_PCIMISC_RST_MODE,
       AR2315_PCIRST_HIGH | AR2315_PCICACHE_DIS | 0x8);

 ar2315_pci_reg_write(apc, AR2315_PCI_UNCACHE_CFG,
        0x1E |
        (1 << 5) |
        (0x2 << 30) );
 ar2315_pci_reg_read(apc, AR2315_PCI_UNCACHE_CFG);

 msleep(500);

 err = ar2315_pci_host_setup(apc);
 if (err)
  return err;

 apc->domain = irq_domain_add_linear(((void*)0), AR2315_PCI_IRQ_COUNT,
         &ar2315_pci_irq_domain_ops, apc);
 if (!apc->domain) {
  dev_err(dev, "failed to add IRQ domain\n");
  return -ENOMEM;
 }

 ar2315_pci_irq_init(apc);


 apc->io_res.name = "AR2315 IO space";
 apc->io_res.start = 0;
 apc->io_res.end = 0;
 apc->io_res.flags = IORESOURCE_IO,

 apc->pci_ctrl.pci_ops = &ar2315_pci_ops;
 apc->pci_ctrl.mem_resource = &apc->mem_res,
 apc->pci_ctrl.io_resource = &apc->io_res,

 register_pci_controller(&apc->pci_ctrl);

 dev_info(dev, "register PCI controller\n");

 return 0;
}

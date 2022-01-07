
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct resource {int end; int start; } ;
struct platform_device {int dev; } ;
struct TYPE_6__ {TYPE_2__* io_resource; TYPE_1__* mem_resource; int * pci_ops; } ;
struct TYPE_5__ {char* name; void* flags; int end; int start; struct resource* parent; } ;
struct TYPE_4__ {char* name; void* flags; int end; int start; struct resource* parent; } ;
struct ar71xx_pci_controller {scalar_t__ irq; TYPE_3__ pci_ctrl; TYPE_2__ io_res; TYPE_1__ mem_res; int cfg_base; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 void* IORESOURCE_IO ;
 void* IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PCI_COMMAND ;
 int PCI_COMMAND_FAST_BACK ;
 int PCI_COMMAND_INVALIDATE ;
 int PCI_COMMAND_MASTER ;
 int PCI_COMMAND_MEMORY ;
 int PCI_COMMAND_PARITY ;
 int PCI_COMMAND_SERR ;
 int PTR_ERR (int ) ;
 int ar71xx_pci_check_error (struct ar71xx_pci_controller*,int) ;
 int ar71xx_pci_irq_init (struct ar71xx_pci_controller*) ;
 int ar71xx_pci_local_write (struct ar71xx_pci_controller*,int ,int,int) ;
 int ar71xx_pci_ops ;
 int ar71xx_pci_reset () ;
 int devm_ioremap_resource (int *,struct resource*) ;
 struct ar71xx_pci_controller* devm_kzalloc (int *,int,int ) ;
 scalar_t__ platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource_byname (struct platform_device*,void*,char*) ;
 int register_pci_controller (TYPE_3__*) ;

__attribute__((used)) static int ar71xx_pci_probe(struct platform_device *pdev)
{
 struct ar71xx_pci_controller *apc;
 struct resource *res;
 u32 t;

 apc = devm_kzalloc(&pdev->dev, sizeof(struct ar71xx_pci_controller),
      GFP_KERNEL);
 if (!apc)
  return -ENOMEM;

 res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "cfg_base");
 apc->cfg_base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(apc->cfg_base))
  return PTR_ERR(apc->cfg_base);

 apc->irq = platform_get_irq(pdev, 0);
 if (apc->irq < 0)
  return -EINVAL;

 res = platform_get_resource_byname(pdev, IORESOURCE_IO, "io_base");
 if (!res)
  return -EINVAL;

 apc->io_res.parent = res;
 apc->io_res.name = "PCI IO space";
 apc->io_res.start = res->start;
 apc->io_res.end = res->end;
 apc->io_res.flags = IORESOURCE_IO;

 res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "mem_base");
 if (!res)
  return -EINVAL;

 apc->mem_res.parent = res;
 apc->mem_res.name = "PCI memory space";
 apc->mem_res.start = res->start;
 apc->mem_res.end = res->end;
 apc->mem_res.flags = IORESOURCE_MEM;

 ar71xx_pci_reset();


 t = PCI_COMMAND_MEMORY | PCI_COMMAND_MASTER | PCI_COMMAND_INVALIDATE
   | PCI_COMMAND_PARITY | PCI_COMMAND_SERR | PCI_COMMAND_FAST_BACK;
 ar71xx_pci_local_write(apc, PCI_COMMAND, 4, t);


 ar71xx_pci_check_error(apc, 1);

 ar71xx_pci_irq_init(apc);

 apc->pci_ctrl.pci_ops = &ar71xx_pci_ops;
 apc->pci_ctrl.mem_resource = &apc->mem_res;
 apc->pci_ctrl.io_resource = &apc->io_res;

 register_pci_controller(&apc->pci_ctrl);

 return 0;
}

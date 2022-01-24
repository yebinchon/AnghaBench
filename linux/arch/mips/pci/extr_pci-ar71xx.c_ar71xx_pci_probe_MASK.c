#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct resource {int /*<<< orphan*/  end; int /*<<< orphan*/  start; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {TYPE_2__* io_resource; TYPE_1__* mem_resource; int /*<<< orphan*/ * pci_ops; } ;
struct TYPE_5__ {char* name; void* flags; int /*<<< orphan*/  end; int /*<<< orphan*/  start; struct resource* parent; } ;
struct TYPE_4__ {char* name; void* flags; int /*<<< orphan*/  end; int /*<<< orphan*/  start; struct resource* parent; } ;
struct ar71xx_pci_controller {scalar_t__ irq; TYPE_3__ pci_ctrl; TYPE_2__ io_res; TYPE_1__ mem_res; int /*<<< orphan*/  cfg_base; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* IORESOURCE_IO ; 
 void* IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCI_COMMAND ; 
 int PCI_COMMAND_FAST_BACK ; 
 int PCI_COMMAND_INVALIDATE ; 
 int PCI_COMMAND_MASTER ; 
 int PCI_COMMAND_MEMORY ; 
 int PCI_COMMAND_PARITY ; 
 int PCI_COMMAND_SERR ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ar71xx_pci_controller*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ar71xx_pci_controller*) ; 
 int /*<<< orphan*/  FUNC4 (struct ar71xx_pci_controller*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  ar71xx_pci_ops ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct resource*) ; 
 struct ar71xx_pci_controller* FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC9 (struct platform_device*,void*,char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct ar71xx_pci_controller *apc;
	struct resource *res;
	u32 t;

	apc = FUNC7(&pdev->dev, sizeof(struct ar71xx_pci_controller),
			   GFP_KERNEL);
	if (!apc)
		return -ENOMEM;

	res = FUNC9(pdev, IORESOURCE_MEM, "cfg_base");
	apc->cfg_base = FUNC6(&pdev->dev, res);
	if (FUNC0(apc->cfg_base))
		return FUNC1(apc->cfg_base);

	apc->irq = FUNC8(pdev, 0);
	if (apc->irq < 0)
		return -EINVAL;

	res = FUNC9(pdev, IORESOURCE_IO, "io_base");
	if (!res)
		return -EINVAL;

	apc->io_res.parent = res;
	apc->io_res.name = "PCI IO space";
	apc->io_res.start = res->start;
	apc->io_res.end = res->end;
	apc->io_res.flags = IORESOURCE_IO;

	res = FUNC9(pdev, IORESOURCE_MEM, "mem_base");
	if (!res)
		return -EINVAL;

	apc->mem_res.parent = res;
	apc->mem_res.name = "PCI memory space";
	apc->mem_res.start = res->start;
	apc->mem_res.end = res->end;
	apc->mem_res.flags = IORESOURCE_MEM;

	FUNC5();

	/* setup COMMAND register */
	t = PCI_COMMAND_MEMORY | PCI_COMMAND_MASTER | PCI_COMMAND_INVALIDATE
	  | PCI_COMMAND_PARITY | PCI_COMMAND_SERR | PCI_COMMAND_FAST_BACK;
	FUNC4(apc, PCI_COMMAND, 4, t);

	/* clear bus errors */
	FUNC2(apc, 1);

	FUNC3(apc);

	apc->pci_ctrl.pci_ops = &ar71xx_pci_ops;
	apc->pci_ctrl.mem_resource = &apc->mem_res;
	apc->pci_ctrl.io_resource = &apc->io_res;

	FUNC10(&apc->pci_ctrl);

	return 0;
}
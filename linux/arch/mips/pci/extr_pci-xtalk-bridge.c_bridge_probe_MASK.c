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
typedef  int u64 ;
struct xtalk_bridge_platform_data {int masterwid; int intr_addr; scalar_t__ bridge_addr; int /*<<< orphan*/  nasid; int /*<<< orphan*/  io_offset; int /*<<< orphan*/  io; int /*<<< orphan*/  mem_offset; int /*<<< orphan*/  mem; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct TYPE_4__ {struct device* parent; } ;
struct pci_host_bridge {int /*<<< orphan*/  windows; int /*<<< orphan*/  bus; int /*<<< orphan*/  swizzle_irq; int /*<<< orphan*/  map_irq; int /*<<< orphan*/ * ops; scalar_t__ busnr; struct bridge_controller* sysdata; TYPE_1__ dev; } ;
struct irq_domain {int dummy; } ;
struct fwnode_handle {int dummy; } ;
struct bridge_regs {int dummy; } ;
struct TYPE_5__ {char* name; int end; int /*<<< orphan*/  flags; scalar_t__ start; } ;
struct bridge_controller {int baddr; int intr_addr; int* pci_int; struct bridge_regs* base; int /*<<< orphan*/  nasid; TYPE_2__ busn; struct irq_domain* domain; } ;
struct TYPE_6__ {int /*<<< orphan*/  reg; } ;

/* Variables and functions */
 int BRIDGE_CTRL_IO_SWAP ; 
 int BRIDGE_CTRL_MEM_SWAP ; 
 int BRIDGE_CTRL_PAGE_SIZE ; 
 int BRIDGE_DEV_SWAP_DIR ; 
 int BRIDGE_IRR_ALL_CLR ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IORESOURCE_BUS ; 
 int PCI64_ATTR_BAR ; 
 int /*<<< orphan*/  PCI_PROBE_ONLY ; 
 TYPE_3__* b_device ; 
 int /*<<< orphan*/  b_dir_map ; 
 int /*<<< orphan*/  b_int_device ; 
 int /*<<< orphan*/  b_int_enable ; 
 int /*<<< orphan*/  b_int_rst_stat ; 
 int /*<<< orphan*/  b_wid_control ; 
 int /*<<< orphan*/  b_wid_int_lower ; 
 int /*<<< orphan*/  b_wid_int_upper ; 
 int /*<<< orphan*/  b_wid_tflush ; 
 int /*<<< orphan*/  FUNC0 (struct bridge_controller*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  bridge_domain_ops ; 
 int /*<<< orphan*/  bridge_map_irq ; 
 int /*<<< orphan*/  bridge_pci_ops ; 
 int /*<<< orphan*/  FUNC1 (struct bridge_controller*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bridge_controller*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bridge_controller*,int /*<<< orphan*/ ,int) ; 
 struct xtalk_bridge_platform_data* FUNC4 (struct device*) ; 
 struct pci_host_bridge* FUNC5 (struct device*,int) ; 
 int FUNC6 (struct device*,int /*<<< orphan*/ *) ; 
 struct fwnode_handle* FUNC7 (char*) ; 
 struct irq_domain* FUNC8 (struct irq_domain*,int /*<<< orphan*/ ,int,struct fwnode_handle*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct fwnode_handle*) ; 
 int /*<<< orphan*/  FUNC10 (struct irq_domain*) ; 
 struct irq_domain* FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pci_common_swizzle ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 struct bridge_controller* FUNC17 (struct pci_host_bridge*) ; 
 int FUNC18 (struct pci_host_bridge*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct platform_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC21(struct platform_device *pdev)
{
	struct xtalk_bridge_platform_data *bd = FUNC4(&pdev->dev);
	struct device *dev = &pdev->dev;
	struct bridge_controller *bc;
	struct pci_host_bridge *host;
	struct irq_domain *domain, *parent;
	struct fwnode_handle *fn;
	int slot;
	int err;

	parent = FUNC11();
	if (!parent)
		return -ENODEV;
	fn = FUNC7("BRIDGE");
	if (!fn)
		return -ENOMEM;
	domain = FUNC8(parent, 0, 8, fn,
					     &bridge_domain_ops, NULL);
	FUNC9(fn);
	if (!domain)
		return -ENOMEM;

	FUNC19(PCI_PROBE_ONLY);

	host = FUNC5(dev, sizeof(*bc));
	if (!host) {
		err = -ENOMEM;
		goto err_remove_domain;
	}

	bc = FUNC17(host);

	bc->busn.name		= "Bridge PCI busn";
	bc->busn.start		= 0;
	bc->busn.end		= 0xff;
	bc->busn.flags		= IORESOURCE_BUS;

	bc->domain		= domain;

	FUNC13(&host->windows, &bd->mem, bd->mem_offset);
	FUNC13(&host->windows, &bd->io, bd->io_offset);
	FUNC12(&host->windows, &bc->busn);

	err = FUNC6(dev, &host->windows);
	if (err < 0)
		goto err_free_resource;

	bc->nasid = bd->nasid;

	bc->baddr = (u64)bd->masterwid << 60 | PCI64_ATTR_BAR;
	bc->base = (struct bridge_regs *)bd->bridge_addr;
	bc->intr_addr = bd->intr_addr;

	/*
	 * Clear all pending interrupts.
	 */
	FUNC3(bc, b_int_rst_stat, BRIDGE_IRR_ALL_CLR);

	/*
	 * Until otherwise set up, assume all interrupts are from slot 0
	 */
	FUNC3(bc, b_int_device, 0x0);

	/*
	 * disable swapping for big windows
	 */
	FUNC0(bc, b_wid_control,
		   BRIDGE_CTRL_IO_SWAP | BRIDGE_CTRL_MEM_SWAP);
#ifdef CONFIG_PAGE_SIZE_4KB
	bridge_clr(bc, b_wid_control, BRIDGE_CTRL_PAGE_SIZE);
#else /* 16kB or larger */
	FUNC2(bc, b_wid_control, BRIDGE_CTRL_PAGE_SIZE);
#endif

	/*
	 * Hmm...  IRIX sets additional bits in the address which
	 * are documented as reserved in the bridge docs.
	 */
	FUNC3(bc, b_wid_int_upper,
		     ((bc->intr_addr >> 32) & 0xffff) | (bd->masterwid << 16));
	FUNC3(bc, b_wid_int_lower, bc->intr_addr & 0xffffffff);
	FUNC3(bc, b_dir_map, (bd->masterwid << 20));	/* DMA */
	FUNC3(bc, b_int_enable, 0);

	for (slot = 0; slot < 8; slot++) {
		FUNC2(bc, b_device[slot].reg, BRIDGE_DEV_SWAP_DIR);
		bc->pci_int[slot] = -1;
	}
	FUNC1(bc, b_wid_tflush);	  /* wait until Bridge PIO complete */

	host->dev.parent = dev;
	host->sysdata = bc;
	host->busnr = 0;
	host->ops = &bridge_pci_ops;
	host->map_irq = bridge_map_irq;
	host->swizzle_irq = pci_common_swizzle;

	err = FUNC18(host);
	if (err < 0)
		goto err_free_resource;

	FUNC15(host->bus);
	FUNC14(host->bus);

	FUNC20(pdev, host->bus);

	return 0;

err_free_resource:
	FUNC16(&host->windows);
err_remove_domain:
	FUNC10(domain);
	return err;
}
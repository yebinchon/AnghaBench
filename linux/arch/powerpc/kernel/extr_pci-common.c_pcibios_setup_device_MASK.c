#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  dma_offset; } ;
struct TYPE_8__ {TYPE_2__ archdata; } ;
struct pci_dev {int /*<<< orphan*/  bus; TYPE_3__ dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* dma_dev_setup ) (struct pci_dev*) ;} ;
struct pci_controller {TYPE_1__ controller_ops; } ;
struct TYPE_9__ {int /*<<< orphan*/  (* pci_irq_fixup ) (struct pci_dev*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_DRAM_OFFSET ; 
 struct pci_controller* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pci_dma_ops ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_5__ ppc_md ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 

__attribute__((used)) static void FUNC7(struct pci_dev *dev)
{
	struct pci_controller *phb;
	/* Fixup NUMA node as it may not be setup yet by the generic
	 * code and is needed by the DMA init
	 */
	FUNC3(&dev->dev, FUNC2(dev->bus));

	/* Hook up default DMA ops */
	FUNC4(&dev->dev, pci_dma_ops);
	dev->dev.archdata.dma_offset = PCI_DRAM_OFFSET;

	/* Additional platform DMA/iommu setup */
	phb = FUNC0(dev->bus);
	if (phb->controller_ops.dma_dev_setup)
		phb->controller_ops.dma_dev_setup(dev);

	/* Read default IRQs and fixup if necessary */
	FUNC1(dev);
	if (ppc_md.pci_irq_fixup)
		ppc_md.pci_irq_fixup(dev);
}
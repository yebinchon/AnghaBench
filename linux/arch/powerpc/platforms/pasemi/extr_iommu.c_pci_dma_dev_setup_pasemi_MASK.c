#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  coherent_dma_mask; int /*<<< orphan*/ * dma_ops; } ;
struct pci_dev {int vendor; int device; TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FW_FEATURE_LPAR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  iommu_table_iobmap ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct pci_dev *dev)
{
	FUNC3("pci_dma_dev_setup, dev %p (%s)\n", dev, FUNC2(dev));

#if !defined(CONFIG_PPC_PASEMI_IOMMU_DMA_FORCE)
	/* For non-LPAR environment, don't translate anything for the DMA
	 * engine. The exception to this is if the user has enabled
	 * CONFIG_PPC_PASEMI_IOMMU_DMA_FORCE at build time.
	 */
	if (dev->vendor == 0x1959 && dev->device == 0xa007 &&
	    !FUNC1(FW_FEATURE_LPAR)) {
		dev->dev.dma_ops = NULL;
		/*
		 * Set the coherent DMA mask to prevent the iommu
		 * being used unnecessarily
		 */
		dev->dev.coherent_dma_mask = FUNC0(44);
		return;
	}
#endif

	FUNC4(&dev->dev, &iommu_table_iobmap);
}
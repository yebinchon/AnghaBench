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
typedef  scalar_t__ u64 ;
struct TYPE_4__ {int /*<<< orphan*/  dma_offset; } ;
struct TYPE_5__ {TYPE_1__ archdata; } ;
struct pci_dev {TYPE_2__ dev; } ;
struct device_node {struct device_node* parent; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_6__ {int /*<<< orphan*/  table_group; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 TYPE_3__* FUNC1 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,struct device_node*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,struct device_node*) ; 
 int /*<<< orphan*/ * FUNC4 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 struct device_node* FUNC5 (struct pci_dev*) ; 

__attribute__((used)) static bool FUNC6(struct pci_dev *pdev, u64 dma_mask)
{
	struct device_node *dn = FUNC5(pdev), *pdn;
	const __be32 *dma_window = NULL;

	/* only attempt to use a new window if 64-bit DMA is requested */
	if (dma_mask < FUNC0(64))
		return false;

	FUNC2(&pdev->dev, "node is %pOF\n", dn);

	/*
	 * the device tree might contain the dma-window properties
	 * per-device and not necessarily for the bus. So we need to
	 * search upwards in the tree until we either hit a dma-window
	 * property, OR find a parent with a table already allocated.
	 */
	for (pdn = dn; pdn && FUNC1(pdn) && !FUNC1(pdn)->table_group;
			pdn = pdn->parent) {
		dma_window = FUNC4(pdn, "ibm,dma-window", NULL);
		if (dma_window)
			break;
	}

	if (pdn && FUNC1(pdn)) {
		pdev->dev.archdata.dma_offset = FUNC3(pdev, pdn);
		if (pdev->dev.archdata.dma_offset)
			return true;
	}

	return false;
}
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
typedef  int /*<<< orphan*/  uint64_t ;
struct pci_dev {int /*<<< orphan*/  devfn; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {scalar_t__ is_msix; } ;
struct msi_desc {TYPE_1__ msi_attrib; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 struct pci_dev* FUNC4 (struct pci_dev*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int,int,struct msi_desc*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int,int,struct msi_desc*) ; 

int FUNC7(struct pci_dev *dev, struct msi_desc *desc)
{
	struct pci_dev *lnkdev;
	uint64_t lnkbase;
	int node, link, slot;

	lnkdev = FUNC4(dev);
	if (lnkdev == NULL) {
		FUNC2(&dev->dev, "Could not find bridge\n");
		return 1;
	}
	slot = FUNC1(lnkdev->devfn);
	link = FUNC0(lnkdev->devfn);
	node = slot / 8;
	lnkbase = FUNC3(node, link);

	if (desc->msi_attrib.is_msix)
		return FUNC6(lnkbase, node, link, desc);
	else
		return FUNC5(lnkbase, node, link, desc);
}
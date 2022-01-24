#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct pci_dev {struct pci_bus* bus; } ;
struct pci_bus {scalar_t__ number; struct pci_bus* parent; } ;
struct iommu_table {scalar_t__ it_busno; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct iommu_table* FUNC1 (struct pci_bus*) ; 
 struct pci_dev* FUNC2 (struct device*) ; 

__attribute__((used)) static inline struct iommu_table *FUNC3(struct device *dev)
{
	struct pci_dev *pdev;
	struct pci_bus *pbus;
	struct iommu_table *tbl;

	pdev = FUNC2(dev);

	/* search up the device tree for an iommu */
	pbus = pdev->bus;
	do {
		tbl = FUNC1(pbus);
		if (tbl && tbl->it_busno == pbus->number)
			break;
		tbl = NULL;
		pbus = pbus->parent;
	} while (pbus);

	FUNC0(tbl && (tbl->it_busno != pbus->number));

	return tbl;
}
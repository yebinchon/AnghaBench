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
struct pci_bus {int /*<<< orphan*/  self; } ;

/* Variables and functions */
 int iommu_table_iobmap_inited ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,struct pci_bus*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct pci_bus *bus)
{
	FUNC1("pci_dma_bus_setup, bus %p, bus->self %p\n", bus, bus->self);

	if (!iommu_table_iobmap_inited) {
		iommu_table_iobmap_inited = 1;
		FUNC0();
	}
}
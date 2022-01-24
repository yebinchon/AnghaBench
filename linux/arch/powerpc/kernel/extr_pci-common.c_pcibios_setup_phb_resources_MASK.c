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
struct resource {int /*<<< orphan*/  flags; } ;
struct pci_controller {scalar_t__* mem_offset; struct resource* mem_resources; int /*<<< orphan*/  global_number; int /*<<< orphan*/  dn; struct resource io_resource; } ;
struct list_head {int dummy; } ;
typedef  scalar_t__ resource_size_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct list_head*,struct resource*,scalar_t__) ; 
 scalar_t__ FUNC1 (struct pci_controller*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static void FUNC3(struct pci_controller *hose,
					struct list_head *resources)
{
	struct resource *res;
	resource_size_t offset;
	int i;

	/* Hookup PHB IO resource */
	res = &hose->io_resource;

	if (!res->flags) {
		FUNC2("PCI: I/O resource not set for host"
			 " bridge %pOF (domain %d)\n",
			 hose->dn, hose->global_number);
	} else {
		offset = FUNC1(hose);

		FUNC2("PCI: PHB IO resource    = %pR off 0x%08llx\n",
			 res, (unsigned long long)offset);
		FUNC0(resources, res, offset);
	}

	/* Hookup PHB Memory resources */
	for (i = 0; i < 3; ++i) {
		res = &hose->mem_resources[i];
		if (!res->flags)
			continue;

		offset = hose->mem_offset[i];
		FUNC2("PCI: PHB MEM resource %d = %pR off 0x%08llx\n", i,
			 res, (unsigned long long)offset);

		FUNC0(resources, res, offset);
	}
}
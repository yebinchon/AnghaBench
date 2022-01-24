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
struct pci_bus {TYPE_1__** resource; scalar_t__ self; } ;
struct TYPE_2__ {scalar_t__ end; scalar_t__ start; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ _IO_BASE ; 
 int /*<<< orphan*/  FUNC1 (struct pci_bus*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__,...) ; 

int FUNC5(struct pci_bus *bus)
{
	FUNC0(bus == NULL);

	/* If this not a PHB, nothing to do, page tables still exist and
	 * thus HPTEs will be faulted in when needed
	 */
	if (bus->self) {
		FUNC4("IO mapping for PCI-PCI bridge %s\n",
			 FUNC2(bus->self));
		FUNC4("  virt=0x%016llx...0x%016llx\n",
			 bus->resource[0]->start + _IO_BASE,
			 bus->resource[0]->end + _IO_BASE);
		return 0;
	}

	return FUNC3(FUNC1(bus));
}
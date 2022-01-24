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
struct pci_bus {int number; } ;

/* Variables and functions */
 unsigned long ARMCSR_BASE ; 
 int /*<<< orphan*/  MAX_SLOTS ; 
 int PCICFG0_BASE ; 
 int PCICFG1_BASE ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (unsigned int) ; 

__attribute__((used)) static unsigned long
FUNC2(struct pci_bus *bus, unsigned int devfn)
{
	unsigned long addr = 0;

	if (bus->number == 0) {
		if (FUNC1(devfn) == 0)
			/*
			 * For devfn 0, point at the 21285
			 */
			addr = ARMCSR_BASE;
		else {
			devfn -= 1 << 3;

			if (devfn < FUNC0(MAX_SLOTS, 0))
				addr = PCICFG0_BASE | 0xc00000 | (devfn << 8);
		}
	} else
		addr = PCICFG1_BASE | (bus->number << 16) | (devfn << 8);

	return addr;
}
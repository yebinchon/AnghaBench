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
typedef  int u32 ;
struct pci_bus {int number; int /*<<< orphan*/ * parent; } ;

/* Variables and functions */
 int PCIBIOS_DEVICE_NOT_FOUND ; 
 int FUNC0 (int) ; 

__attribute__((used)) static int FUNC1(struct pci_bus *bus, u32 devfn, u32 * bus_num)
{
	/* check if the bus is top-level */
	if (bus->parent != NULL)
		*bus_num = bus->number;
	else
		*bus_num = 0;

	if (*bus_num == 0) {
		/* Type 0 */
		if (FUNC0(devfn) >= 10)
			return PCIBIOS_DEVICE_NOT_FOUND;
	} else {
		/* Type 1 */
		if ((*bus_num >= 64) || (FUNC0(devfn) >= 16))
			return PCIBIOS_DEVICE_NOT_FOUND;
	}
	return 0;
}
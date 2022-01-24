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
typedef  int /*<<< orphan*/ * vusp ;
typedef  int /*<<< orphan*/ * vuip ;
typedef  int /*<<< orphan*/ * vucp ;
typedef  int /*<<< orphan*/  u32 ;
struct pci_bus {int dummy; } ;

/* Variables and functions */
 int PCIBIOS_DEVICE_NOT_FOUND ; 
 int PCIBIOS_SUCCESSFUL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct pci_bus*,unsigned int,int,unsigned long*,unsigned char*) ; 

__attribute__((used)) static int
FUNC3(struct pci_bus *bus, unsigned int devfn, int where,
		     int size, u32 *value)
{
	unsigned long addr;
	unsigned char type1;

	if (FUNC2(bus, devfn, where, &addr, &type1))
		return PCIBIOS_DEVICE_NOT_FOUND;

	switch (size) {
	case 1:
		*value = FUNC0(*(vucp)addr);
		break;
	case 2:
		*value = FUNC1(*(vusp)addr);
		break;
	case 4:
		*value = *(vuip)addr;
		break;
	}

	return PCIBIOS_SUCCESSFUL;
}
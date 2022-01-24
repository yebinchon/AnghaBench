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
struct pci_bus {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pci_bus*,unsigned int,int) ; 
 int PCIBIOS_SUCCESSFUL ; 
 int /*<<< orphan*/  PCICFG_ADDR ; 
 int /*<<< orphan*/  PCICFG_DATA ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct pci_bus *bus, unsigned int devfn, int where,
			int size, u32 *value)
{
	FUNC2(FUNC0(bus, devfn, where), PCICFG_ADDR);
	switch (size) {
	case 1:
		*value = (FUNC1(PCICFG_DATA) >> ((where & 3) * 8)) & 0xFF;
		break;
	case 2:
		*value = (FUNC1(PCICFG_DATA) >> ((where & 2) * 8)) & 0xFFFF;
		break;
	case 4:
		*value = FUNC1(PCICFG_DATA);
		break;
	}
	return PCIBIOS_SUCCESSFUL;
}
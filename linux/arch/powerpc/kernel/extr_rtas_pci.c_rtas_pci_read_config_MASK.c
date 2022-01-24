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
struct pci_dn {int dummy; } ;
struct pci_bus {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int PCIBIOS_DEVICE_NOT_FOUND ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct pci_dn* FUNC2 (struct pci_bus*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dn*) ; 
 int FUNC4 (struct pci_dn*,int,int,int*) ; 

__attribute__((used)) static int FUNC5(struct pci_bus *bus,
				unsigned int devfn,
				int where, int size, u32 *val)
{
	struct pci_dn *pdn;
	int ret;

	*val = 0xFFFFFFFF;

	pdn = FUNC2(bus, devfn);

	/* Validity of pdn is checked in here */
	ret = FUNC4(pdn, where, size, val);
	if (*val == FUNC0(size) &&
	    FUNC1(FUNC3(pdn)))
		return PCIBIOS_DEVICE_NOT_FOUND;

	return ret;
}
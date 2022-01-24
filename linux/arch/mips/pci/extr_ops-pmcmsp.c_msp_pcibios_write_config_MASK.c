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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct pci_bus {int dummy; } ;

/* Variables and functions */
 int PCIBIOS_SUCCESSFUL ; 
 scalar_t__ FUNC0 (struct pci_bus*,unsigned int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct pci_bus*,unsigned int,int,int) ; 
 scalar_t__ FUNC2 (struct pci_bus*,unsigned int,int,int /*<<< orphan*/ ) ; 

int
FUNC3(struct pci_bus *bus,
			unsigned int devfn,
			int where,
			int size,
			u32 val)
{
	if (size == 1) {
		if (FUNC0(bus, devfn,
						where, (u8)(0xFF & val))) {
			return -1;
		}
	} else if (size == 2) {
		if (FUNC2(bus, devfn,
						where, (u16)(0xFFFF & val))) {
			return -1;
		}
	} else if (size == 4) {
		if (FUNC1(bus, devfn, where, val)) {
			return -1;
		}
	} else {
		return -1;
	}

	return PCIBIOS_SUCCESSFUL;
}
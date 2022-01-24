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
typedef  int /*<<< orphan*/  u32 ;
struct pci_bus {int dummy; } ;
struct ar2315_pci_ctrl {int dummy; } ;

/* Variables and functions */
 scalar_t__ AR2315_PCI_HOST_SLOT ; 
 int PCIBIOS_DEVICE_NOT_FOUND ; 
 scalar_t__ FUNC0 (unsigned int) ; 
 struct ar2315_pci_ctrl* FUNC1 (struct pci_bus*) ; 
 int FUNC2 (struct ar2315_pci_ctrl*,unsigned int,int,int,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC3(struct pci_bus *bus, unsigned devfn, int where,
			       int size, u32 *value)
{
	struct ar2315_pci_ctrl *apc = FUNC1(bus);

	if (FUNC0(devfn) == AR2315_PCI_HOST_SLOT)
		return PCIBIOS_DEVICE_NOT_FOUND;

	return FUNC2(apc, devfn, where, size, value, false);
}
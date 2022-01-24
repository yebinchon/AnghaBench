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
typedef  int u8 ;
typedef  int u32 ;
struct pci_bus {int /*<<< orphan*/  number; TYPE_1__* self; } ;
struct TYPE_2__ {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int PCI_EXP_LNKCTL_ASPMC ; 
 int /*<<< orphan*/  FUNC1 (struct pci_bus*) ; 
 int* quirk_aspm_offset ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int,int,int) ; 

__attribute__((used)) static int FUNC3(struct pci_bus *bus, unsigned int devfn, int where, int size, u32 value)
{
	u8 offset;

	offset = quirk_aspm_offset[FUNC0(bus->self->device, devfn)];

	if ((offset) && (where == offset))
		value = value & ~PCI_EXP_LNKCTL_ASPMC;

	return FUNC2(FUNC1(bus), bus->number,
						devfn, where, size, value);
}
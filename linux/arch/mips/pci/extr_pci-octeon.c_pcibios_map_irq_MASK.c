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
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct pci_dev const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

int FUNC2(const struct pci_dev *dev, u8 slot, u8 pin)
{
	if (&octeon_pcibios_map_irq)
		return FUNC0(dev, slot, pin);
	else
		FUNC1("octeon_pcibios_map_irq not set.");
}
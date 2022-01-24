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
typedef  int u8 ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,int) ; 

int FUNC2(const struct pci_dev *pdev, u8 slot, u8 pin)
{
	int irq = -1;

	switch (slot) {
	case 8:  /* the PCI bridge */ break;
	case 11: irq = FUNC0(0x300); break; /* USB    */
	case 12: irq = FUNC0(0x360); break; /* PCMCIA */
	case 13: irq = FUNC0(0x2a0); break; /* eth0   */
	case 14: irq = FUNC0(0x300); break; /* eth1   */
	case 15: irq = FUNC0(0x360); break; /* safenet (unused) */
	}

	FUNC1("PCI: Mapping SnapGear IRQ for slot %d, pin %c to irq %d\n",
	       slot, pin - 1 + 'A', irq);

	return irq;
}
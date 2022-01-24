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
typedef  size_t u8 ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,size_t,size_t,int) ; 
 int* titan_irq_tab ; 

int FUNC1(const struct pci_dev *pdev, u8 slot, u8 pin)
{
	int irq = titan_irq_tab[slot];

	FUNC0("PCI: Mapping TITAN IRQ for slot %d, pin %c to irq %d\n",
		slot, pin - 1 + 'A', irq);

	return irq;
}
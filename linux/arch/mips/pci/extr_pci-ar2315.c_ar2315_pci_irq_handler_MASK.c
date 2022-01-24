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
struct irq_desc {int dummy; } ;
struct ar2315_pci_ctrl {int /*<<< orphan*/  domain; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR2315_PCI_IMR ; 
 int /*<<< orphan*/  AR2315_PCI_ISR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct ar2315_pci_ctrl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 struct ar2315_pci_ctrl* FUNC3 (struct irq_desc*) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void FUNC6(struct irq_desc *desc)
{
	struct ar2315_pci_ctrl *apc = FUNC3(desc);
	u32 pending = FUNC1(apc, AR2315_PCI_ISR) &
		      FUNC1(apc, AR2315_PCI_IMR);
	unsigned pci_irq = 0;

	if (pending)
		pci_irq = FUNC4(apc->domain, FUNC0(pending));

	if (pci_irq)
		FUNC2(pci_irq);
	else
		FUNC5();
}
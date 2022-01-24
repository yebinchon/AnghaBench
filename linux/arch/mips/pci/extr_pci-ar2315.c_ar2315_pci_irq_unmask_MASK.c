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
struct irq_data {int /*<<< orphan*/  hwirq; } ;
struct ar2315_pci_ctrl {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR2315_PCI_IMR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ar2315_pci_ctrl*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ar2315_pci_ctrl* FUNC2 (struct irq_data*) ; 

__attribute__((used)) static void FUNC3(struct irq_data *d)
{
	struct ar2315_pci_ctrl *apc = FUNC2(d);

	FUNC1(apc, AR2315_PCI_IMR, 0, FUNC0(d->hwirq));
}
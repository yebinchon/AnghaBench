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
struct pci_controller {scalar_t__ global_number; scalar_t__ is_dynamic; int /*<<< orphan*/  list_node; } ;

/* Variables and functions */
 scalar_t__ MAX_PHBS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hose_spinlock ; 
 int /*<<< orphan*/  FUNC1 (struct pci_controller*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  phb_bitmap ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct pci_controller *phb)
{
	FUNC3(&hose_spinlock);

	/* Clear bit of phb_bitmap to allow reuse of this PHB number. */
	if (phb->global_number < MAX_PHBS)
		FUNC0(phb->global_number, phb_bitmap);

	FUNC2(&phb->list_node);
	FUNC4(&hose_spinlock);

	if (phb->is_dynamic)
		FUNC1(phb);
}
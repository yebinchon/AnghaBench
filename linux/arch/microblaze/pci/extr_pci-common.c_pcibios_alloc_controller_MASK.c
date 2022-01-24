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
struct pci_controller {int /*<<< orphan*/  is_dynamic; struct device_node* dn; int /*<<< orphan*/  list_node; scalar_t__ global_number; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  global_phb_number ; 
 int /*<<< orphan*/  hose_list ; 
 int /*<<< orphan*/  hose_spinlock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mem_init_done ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct pci_controller* FUNC3 (int,int /*<<< orphan*/ ) ; 

struct pci_controller *FUNC4(struct device_node *dev)
{
	struct pci_controller *phb;

	phb = FUNC3(sizeof(struct pci_controller), GFP_KERNEL);
	if (!phb)
		return NULL;
	FUNC1(&hose_spinlock);
	phb->global_number = global_phb_number++;
	FUNC0(&phb->list_node, &hose_list);
	FUNC2(&hose_spinlock);
	phb->dn = dev;
	phb->is_dynamic = mem_init_done;
	return phb;
}
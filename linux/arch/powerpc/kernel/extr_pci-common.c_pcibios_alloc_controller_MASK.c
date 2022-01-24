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
struct pci_controller {int /*<<< orphan*/  is_dynamic; struct device_node* dn; int /*<<< orphan*/  list_node; int /*<<< orphan*/  global_number; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int NUMA_NO_NODE ; 
 int /*<<< orphan*/  FUNC0 (struct pci_controller*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct device_node*) ; 
 int /*<<< orphan*/  hose_list ; 
 int /*<<< orphan*/  hose_spinlock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct pci_controller* FUNC8 (int,int /*<<< orphan*/ ) ; 

struct pci_controller *FUNC9(struct device_node *dev)
{
	struct pci_controller *phb;

	phb = FUNC8(sizeof(struct pci_controller), GFP_KERNEL);
	if (phb == NULL)
		return NULL;
	FUNC6(&hose_spinlock);
	phb->global_number = FUNC1(dev);
	FUNC2(&phb->list_node, &hose_list);
	FUNC7(&hose_spinlock);
	phb->dn = dev;
	phb->is_dynamic = FUNC5();
#ifdef CONFIG_PPC64
	if (dev) {
		int nid = of_node_to_nid(dev);

		if (nid < 0 || !node_online(nid))
			nid = NUMA_NO_NODE;

		PHB_SET_NODE(phb, nid);
	}
#endif
	return phb;
}
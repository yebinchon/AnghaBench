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
struct pci_controller {struct device_node* dn; int /*<<< orphan*/  controller_ops; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 scalar_t__ SPIDER_PCI_REG_BASE ; 
 int /*<<< orphan*/  cell_pci_controller_ops ; 
 int /*<<< orphan*/  FUNC0 (struct pci_controller*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*) ; 
 char* FUNC1 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*,char*) ; 
 int FUNC3 (struct pci_controller*) ; 
 int /*<<< orphan*/  spiderpci_iowa_init ; 
 int /*<<< orphan*/  spiderpci_ops ; 
 scalar_t__ FUNC4 (char const*,char*) ; 

__attribute__((used)) static int FUNC5(struct pci_controller *phb)
{
	const char *model;
	struct device_node *np;

	int rc = FUNC3(phb);
	if (rc)
		return rc;

	phb->controller_ops = cell_pci_controller_ops;

	np = phb->dn;
	model = FUNC1(np, "model", NULL);
	if (model == NULL || !FUNC2(np, "pci"))
		return 0;

	/* Setup workarounds for spider */
	if (FUNC4(model, "Spider"))
		return 0;

	FUNC0(phb, &spiderpci_ops, &spiderpci_iowa_init,
				  (void *)SPIDER_PCI_REG_BASE);
	return 0;
}
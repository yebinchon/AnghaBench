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
struct pci_dn {struct pci_controller* phb; } ;
struct pci_controller {scalar_t__ buid; } ;
struct eeh_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* probe ) (struct pci_dn*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  EEH_PROBE_MODE_DEVTREE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* eeh_ops ; 
 struct eeh_dev* FUNC1 (struct pci_dn*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dn*,int /*<<< orphan*/ *) ; 

void FUNC3(struct pci_dn *pdn)
{
	struct pci_controller *phb = pdn ? pdn->phb : NULL;
	struct eeh_dev *edev = FUNC1(pdn);

	if (!edev)
		return;

	if (!FUNC0(EEH_PROBE_MODE_DEVTREE))
		return;

	/* USB Bus children of PCI devices will not have BUID's */
	if (NULL == phb ||
	    (FUNC0(EEH_PROBE_MODE_DEVTREE) && 0 == phb->buid))
		return;

	eeh_ops->probe(pdn, NULL);
}
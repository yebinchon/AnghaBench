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
struct pci_dn {int flags; } ;
struct pci_dev {int /*<<< orphan*/  bus; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* release_device ) (struct pci_dev*) ;} ;
struct pci_controller {TYPE_1__ controller_ops; } ;

/* Variables and functions */
 int PCI_DN_FLAG_DEAD ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dn*) ; 
 struct pci_controller* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,char*) ; 
 struct pci_dn* FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 

void FUNC6(struct pci_dev *dev)
{
	struct pci_controller *phb = FUNC2(dev->bus);
	struct pci_dn *pdn = FUNC4(dev);

	FUNC0(dev);

	if (phb->controller_ops.release_device)
		phb->controller_ops.release_device(dev);

	/* free()ing the pci_dn has been deferred to us, do it now */
	if (pdn && (pdn->flags & PCI_DN_FLAG_DEAD)) {
		FUNC3(dev, "freeing dead pdn\n");
		FUNC1(pdn);
	}
}
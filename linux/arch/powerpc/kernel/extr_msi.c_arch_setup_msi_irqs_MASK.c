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
struct pci_dev {int /*<<< orphan*/  bus; } ;
struct TYPE_2__ {int (* setup_msi_irqs ) (struct pci_dev*,int,int) ;int /*<<< orphan*/  teardown_msi_irqs; } ;
struct pci_controller {TYPE_1__ controller_ops; } ;

/* Variables and functions */
 int ENOSYS ; 
 int PCI_CAP_ID_MSI ; 
 struct pci_controller* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (struct pci_dev*,int,int) ; 

int FUNC3(struct pci_dev *dev, int nvec, int type)
{
	struct pci_controller *phb = FUNC0(dev->bus);

	if (!phb->controller_ops.setup_msi_irqs ||
	    !phb->controller_ops.teardown_msi_irqs) {
		FUNC1("msi: Platform doesn't provide MSI callbacks.\n");
		return -ENOSYS;
	}

	/* PowerPC doesn't support multiple MSI yet */
	if (type == PCI_CAP_ID_MSI && nvec > 1)
		return 1;

	return phb->controller_ops.setup_msi_irqs(dev, nvec, type);
}
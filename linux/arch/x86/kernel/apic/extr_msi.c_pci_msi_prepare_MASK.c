#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct pci_dev {int dummy; } ;
struct TYPE_5__ {scalar_t__ is_msix; } ;
struct msi_desc {TYPE_1__ msi_attrib; } ;
struct irq_domain {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  type; struct pci_dev* msi_dev; } ;
typedef  TYPE_2__ msi_alloc_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  X86_IRQ_ALLOC_CONTIGUOUS_VECTORS ; 
 int /*<<< orphan*/  X86_IRQ_ALLOC_TYPE_MSI ; 
 int /*<<< orphan*/  X86_IRQ_ALLOC_TYPE_MSIX ; 
 struct msi_desc* FUNC0 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 struct pci_dev* FUNC2 (struct device*) ; 

int FUNC3(struct irq_domain *domain, struct device *dev, int nvec,
		    msi_alloc_info_t *arg)
{
	struct pci_dev *pdev = FUNC2(dev);
	struct msi_desc *desc = FUNC0(pdev);

	FUNC1(arg, NULL);
	arg->msi_dev = pdev;
	if (desc->msi_attrib.is_msix) {
		arg->type = X86_IRQ_ALLOC_TYPE_MSIX;
	} else {
		arg->type = X86_IRQ_ALLOC_TYPE_MSI;
		arg->flags |= X86_IRQ_ALLOC_CONTIGUOUS_VECTORS;
	}

	return 0;
}
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
struct pnv_phb {int msi_base; int /*<<< orphan*/  msi_bmp; } ;
struct pci_dev {int /*<<< orphan*/  bus; } ;
struct pci_controller {struct pnv_phb* private_data; } ;
struct cxl_irq_ranges {int* offset; int /*<<< orphan*/ * range; } ;

/* Variables and functions */
 int CXL_IRQ_RANGES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct pci_controller* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int,int /*<<< orphan*/ ) ; 

void FUNC3(struct cxl_irq_ranges *irqs,
				  struct pci_dev *dev)
{
	struct pci_controller *hose = FUNC1(dev->bus);
	struct pnv_phb *phb = hose->private_data;
	int i, hwirq;

	for (i = 1; i < CXL_IRQ_RANGES; i++) {
		if (!irqs->range[i])
			continue;
		FUNC2("cxl release irq range 0x%x: offset: 0x%lx  limit: %ld\n",
			 i, irqs->offset[i],
			 irqs->range[i]);
		hwirq = irqs->offset[i] - phb->msi_base;
		FUNC0(&phb->msi_bmp, hwirq,
				       irqs->range[i]);
	}
}
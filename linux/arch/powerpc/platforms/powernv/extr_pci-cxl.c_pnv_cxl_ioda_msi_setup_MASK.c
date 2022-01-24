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
struct pnv_phb {unsigned int msi_base; int /*<<< orphan*/  opal_id; } ;
struct pnv_ioda_pe {int /*<<< orphan*/  pe_number; } ;
struct pci_dev {int /*<<< orphan*/  bus; } ;
struct pci_controller {struct pnv_phb* private_data; } ;

/* Variables and functions */
 int EIO ; 
 int ENODEV ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 struct pci_controller* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pnv_ioda_pe*,char*,int /*<<< orphan*/ ,int,unsigned int,unsigned int,unsigned int) ; 
 struct pnv_ioda_pe* FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pnv_phb*,unsigned int) ; 

int FUNC6(struct pci_dev *dev, unsigned int hwirq,
			   unsigned int virq)
{
	struct pci_controller *hose = FUNC1(dev->bus);
	struct pnv_phb *phb = hose->private_data;
	unsigned int xive_num = hwirq - phb->msi_base;
	struct pnv_ioda_pe *pe;
	int rc;

	if (!(pe = FUNC4(dev)))
		return -ENODEV;

	/* Assign XIVE to PE */
	rc = FUNC0(phb->opal_id, pe->pe_number, xive_num);
	if (rc) {
		FUNC3(pe, "%s: OPAL error %d setting msi_base 0x%x "
			"hwirq 0x%x XIVE 0x%x PE\n",
			FUNC2(dev), rc, phb->msi_base, hwirq, xive_num);
		return -EIO;
	}
	FUNC5(phb, virq);

	return 0;
}
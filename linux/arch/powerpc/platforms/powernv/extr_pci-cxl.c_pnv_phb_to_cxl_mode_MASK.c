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
typedef  int /*<<< orphan*/  uint64_t ;
struct pnv_phb {int /*<<< orphan*/  opal_id; } ;
struct pnv_ioda_pe {int /*<<< orphan*/  pe_number; } ;
struct pci_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  bus; } ;
struct pci_controller {struct pnv_phb* private_data; } ;

/* Variables and functions */
 int ENODEV ; 
 int OPAL_UNSUPPORTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct pci_controller* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pnv_ioda_pe*,char*) ; 
 struct pnv_ioda_pe* FUNC4 (struct pci_dev*) ; 

int FUNC5(struct pci_dev *dev, uint64_t mode)
{
	struct pci_controller *hose = FUNC2(dev->bus);
	struct pnv_phb *phb = hose->private_data;
	struct pnv_ioda_pe *pe;
	int rc;

	pe = FUNC4(dev);
	if (!pe)
		return -ENODEV;

	FUNC3(pe, "Switching PHB to CXL\n");

	rc = FUNC1(phb->opal_id, mode, pe->pe_number);
	if (rc == OPAL_UNSUPPORTED)
		FUNC0(&dev->dev, "Required cxl mode not supported by firmware - update skiboot\n");
	else if (rc)
		FUNC0(&dev->dev, "opal_pci_set_phb_cxl_mode failed: %i\n", rc);

	return rc;
}
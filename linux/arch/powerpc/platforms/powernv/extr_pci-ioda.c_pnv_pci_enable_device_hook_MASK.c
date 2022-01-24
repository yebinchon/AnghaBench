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
struct pnv_phb {int /*<<< orphan*/  initialized; } ;
struct pci_dn {scalar_t__ pe_number; } ;
struct pci_dev {int /*<<< orphan*/  bus; } ;
struct pci_controller {struct pnv_phb* private_data; } ;

/* Variables and functions */
 scalar_t__ IODA_INVALID_PE ; 
 struct pci_controller* FUNC0 (int /*<<< orphan*/ ) ; 
 struct pci_dn* FUNC1 (struct pci_dev*) ; 

__attribute__((used)) static bool FUNC2(struct pci_dev *dev)
{
	struct pci_controller *hose = FUNC0(dev->bus);
	struct pnv_phb *phb = hose->private_data;
	struct pci_dn *pdn;

	/* The function is probably called while the PEs have
	 * not be created yet. For example, resource reassignment
	 * during PCI probe period. We just skip the check if
	 * PEs isn't ready.
	 */
	if (!phb->initialized)
		return true;

	pdn = FUNC1(dev);
	if (!pdn || pdn->pe_number == IODA_INVALID_PE)
		return false;

	return true;
}
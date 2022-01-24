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
struct pnv_ioda_pe {scalar_t__ mve_number; int /*<<< orphan*/  pe_number; } ;
struct pci_dev {scalar_t__ no_64bit_msi; } ;
struct msi_msg {int address_hi; int address_lo; void* data; } ;
typedef  int /*<<< orphan*/  __be64 ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int EIO ; 
 int ENXIO ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__,unsigned int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__,unsigned int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 struct pnv_ioda_pe* FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct pnv_phb*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,char*,unsigned int,unsigned int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int,...) ; 

__attribute__((used)) static int FUNC10(struct pnv_phb *phb, struct pci_dev *dev,
				  unsigned int hwirq, unsigned int virq,
				  unsigned int is_64, struct msi_msg *msg)
{
	struct pnv_ioda_pe *pe = FUNC6(dev);
	unsigned int xive_num = hwirq - phb->msi_base;
	__be32 data;
	int rc;

	/* No PE assigned ? bail out ... no MSI for you ! */
	if (pe == NULL)
		return -ENXIO;

	/* Check if we have an MVE */
	if (pe->mve_number < 0)
		return -ENXIO;

	/* Force 32-bit MSI on some broken devices */
	if (dev->no_64bit_msi)
		is_64 = 0;

	/* Assign XIVE to PE */
	rc = FUNC4(phb->opal_id, pe->pe_number, xive_num);
	if (rc) {
		FUNC9("%s: OPAL error %d setting XIVE %d PE\n",
			FUNC5(dev), rc, xive_num);
		return -EIO;
	}

	if (is_64) {
		__be64 addr64;

		rc = FUNC3(phb->opal_id, pe->mve_number, xive_num, 1,
				     &addr64, &data);
		if (rc) {
			FUNC9("%s: OPAL error %d getting 64-bit MSI data\n",
				FUNC5(dev), rc);
			return -EIO;
		}
		msg->address_hi = FUNC1(addr64) >> 32;
		msg->address_lo = FUNC1(addr64) & 0xfffffffful;
	} else {
		__be32 addr32;

		rc = FUNC2(phb->opal_id, pe->mve_number, xive_num, 1,
				     &addr32, &data);
		if (rc) {
			FUNC9("%s: OPAL error %d getting 32-bit MSI data\n",
				FUNC5(dev), rc);
			return -EIO;
		}
		msg->address_hi = 0;
		msg->address_lo = FUNC0(addr32);
	}
	msg->data = FUNC0(data);

	FUNC7(phb, virq);

	FUNC8("%s: %s-bit MSI on hwirq %x (xive #%d),"
		 " address=%x_%08x data=%x PE# %x\n",
		 FUNC5(dev), is_64 ? "64" : "32", hwirq, xive_num,
		 msg->address_hi, msg->address_lo, data, pe->pe_number);

	return 0;
}
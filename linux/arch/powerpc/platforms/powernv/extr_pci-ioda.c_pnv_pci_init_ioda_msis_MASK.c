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
struct pnv_phb {int msi32_support; void* msi_base; int /*<<< orphan*/  msi_setup; TYPE_1__* hose; int /*<<< orphan*/  msi_bmp; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_2__ {int /*<<< orphan*/  global_number; int /*<<< orphan*/  dn; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pnv_pci_ioda_msi_setup ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned int,void*) ; 

__attribute__((used)) static void FUNC5(struct pnv_phb *phb)
{
	unsigned int count;
	const __be32 *prop = FUNC2(phb->hose->dn,
					     "ibm,opal-msi-ranges", NULL);
	if (!prop) {
		/* BML Fallback */
		prop = FUNC2(phb->hose->dn, "msi-ranges", NULL);
	}
	if (!prop)
		return;

	phb->msi_base = FUNC0(prop);
	count = FUNC0(prop + 1);
	if (FUNC1(&phb->msi_bmp, count, phb->hose->dn)) {
		FUNC3("PCI %d: Failed to allocate MSI bitmap !\n",
		       phb->hose->global_number);
		return;
	}

	phb->msi_setup = pnv_pci_ioda_msi_setup;
	phb->msi32_support = 1;
	FUNC4("  Allocated bitmap for %d MSIs (base IRQ 0x%x)\n",
		count, phb->msi_base);
}
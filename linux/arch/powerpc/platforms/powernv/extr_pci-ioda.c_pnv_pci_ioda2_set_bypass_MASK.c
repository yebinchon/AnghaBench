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
typedef  int uint16_t ;
struct pnv_ioda_pe {int pe_number; int tce_bypass_enabled; int /*<<< orphan*/  tce_bypass_base; TYPE_1__* phb; } ;
typedef  int /*<<< orphan*/  phys_addr_t ;
typedef  scalar_t__ int64_t ;
struct TYPE_2__ {int /*<<< orphan*/  opal_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pnv_ioda_pe*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct pnv_ioda_pe*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct pnv_ioda_pe *pe, bool enable)
{
	uint16_t window_id = (pe->pe_number << 1 ) + 1;
	int64_t rc;

	FUNC3(pe, "%sabling 64-bit DMA bypass\n", enable ? "En" : "Dis");
	if (enable) {
		phys_addr_t top = FUNC0();

		top = FUNC4(top);
		rc = FUNC1(pe->phb->opal_id,
						     pe->pe_number,
						     window_id,
						     pe->tce_bypass_base,
						     top);
	} else {
		rc = FUNC1(pe->phb->opal_id,
						     pe->pe_number,
						     window_id,
						     pe->tce_bypass_base,
						     0);
	}
	if (rc)
		FUNC2(pe, "OPAL error %lld configuring bypass window\n", rc);
	else
		pe->tce_bypass_enabled = enable;
}
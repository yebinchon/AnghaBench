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
struct pdc_pat_mem_phys_mem_location {int dimm_slot; } ;

/* Variables and functions */
 unsigned long PDT_ADDR_PERM_ERR ; 
 unsigned long PDT_ADDR_PHYS_MASK ; 
 unsigned long PDT_ADDR_SINGLE_ERR ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct pdc_pat_mem_phys_mem_location*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned long,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 

__attribute__((used)) static void FUNC4(unsigned long pde)
{
	struct pdc_pat_mem_phys_mem_location loc;
	unsigned long addr;
	char dimm_txt[32];

	addr = pde & PDT_ADDR_PHYS_MASK;

	/* show DIMM slot description on PAT machines */
	if (FUNC0()) {
		FUNC1(&loc, addr);
		FUNC3(dimm_txt, "DIMM slot %02x, ", loc.dimm_slot);
	} else
		dimm_txt[0] = 0;

	FUNC2("PDT: BAD MEMORY at 0x%08lx, %s%s%s-bit error.\n",
		addr, dimm_txt,
		pde & PDT_ADDR_PERM_ERR ? "permanent ":"",
		pde & PDT_ADDR_SINGLE_ERR ? "single":"multi");
}
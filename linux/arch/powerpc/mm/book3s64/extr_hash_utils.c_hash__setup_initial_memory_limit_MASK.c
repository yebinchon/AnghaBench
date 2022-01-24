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
typedef  scalar_t__ phys_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CPU_FTR_ARCH_300 ; 
 int /*<<< orphan*/  CPU_FTR_HVMODE ; 
 unsigned long SID_SHIFT_1T ; 
 scalar_t__ ULONG_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__,unsigned long) ; 
 scalar_t__ ppc64_rma_size ; 
 int /*<<< orphan*/  u64 ; 

void FUNC4(phys_addr_t first_memblock_base,
				phys_addr_t first_memblock_size)
{
	/*
	 * We don't currently support the first MEMBLOCK not mapping 0
	 * physical on those processors
	 */
	FUNC0(first_memblock_base != 0);

	/*
	 * On virtualized systems the first entry is our RMA region aka VRMA,
	 * non-virtualized 64-bit hash MMU systems don't have a limitation
	 * on real mode access.
	 *
	 * For guests on platforms before POWER9, we clamp the it limit to 1G
	 * to avoid some funky things such as RTAS bugs etc...
	 *
	 * On POWER9 we limit to 1TB in case the host erroneously told us that
	 * the RMA was >1TB. Effective address bits 0:23 are treated as zero
	 * (meaning the access is aliased to zero i.e. addr = addr % 1TB)
	 * for virtual real mode addressing and so it doesn't make sense to
	 * have an area larger than 1TB as it can't be addressed.
	 */
	if (!FUNC1(CPU_FTR_HVMODE)) {
		ppc64_rma_size = first_memblock_size;
		if (!FUNC1(CPU_FTR_ARCH_300))
			ppc64_rma_size = FUNC3(u64, ppc64_rma_size, 0x40000000);
		else
			ppc64_rma_size = FUNC3(u64, ppc64_rma_size,
					       1UL << SID_SHIFT_1T);

		/* Finally limit subsequent allocations */
		FUNC2(ppc64_rma_size);
	} else {
		ppc64_rma_size = ULONG_MAX;
	}
}
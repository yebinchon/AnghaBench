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
struct cpuinfo_arc_mmu {scalar_t__ ver; scalar_t__ pg_sz_k; scalar_t__ s_pg_sz_m; int /*<<< orphan*/  pae; } ;
typedef  int /*<<< orphan*/  str ;
struct TYPE_2__ {struct cpuinfo_arc_mmu mmu; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARC_REG_PID ; 
 int /*<<< orphan*/  ARC_REG_SCRATCH_DATA0 ; 
 int /*<<< orphan*/  ARC_REG_TLBPD1HI ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CONFIG_ARC_HAS_PAE40 ; 
 int CONFIG_ARC_KVADDR_SIZE ; 
 scalar_t__ CONFIG_ARC_MMU_VER ; 
 int /*<<< orphan*/  CONFIG_TRANSPARENT_HUGEPAGE ; 
 int /*<<< orphan*/  HPAGE_PMD_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MMU_ENABLE ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  PMD_SIZE ; 
 int STACK_TOP ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 TYPE_1__* cpuinfo_arc700 ; 
 scalar_t__ FUNC6 () ; 
 scalar_t__ FUNC7 () ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 
 size_t FUNC11 () ; 
 int /*<<< orphan*/  swapper_pg_dir ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC13(void)
{
	struct cpuinfo_arc_mmu *mmu = &cpuinfo_arc700[FUNC11()].mmu;
	char str[256];
	int compat = 0;

	FUNC10("%s", FUNC5(0, str, sizeof(str)));

	/*
	 * Can't be done in processor.h due to header include depenedencies
	 */
	FUNC0(!FUNC1((CONFIG_ARC_KVADDR_SIZE << 20), PMD_SIZE));

	/*
	 * stack top size sanity check,
	 * Can't be done in processor.h due to header include depenedencies
	 */
	FUNC0(!FUNC1(STACK_TOP, PMD_SIZE));

	/*
	 * Ensure that MMU features assumed by kernel exist in hardware.
	 * For older ARC700 cpus, it has to be exact match, since the MMU
	 * revisions were not backwards compatible (MMUv3 TLB layout changed
	 * so even if kernel for v2 didn't use any new cmds of v3, it would
	 * still not work.
	 * For HS cpus, MMUv4 was baseline and v5 is backwards compatible
	 * (will run older software).
	 */
	if (FUNC6() && mmu->ver == CONFIG_ARC_MMU_VER)
		compat = 1;
	else if (FUNC7() && mmu->ver >= CONFIG_ARC_MMU_VER)
		compat = 1;

	if (!compat) {
		FUNC9("MMU ver %d doesn't match kernel built for %d...\n",
		      mmu->ver, CONFIG_ARC_MMU_VER);
	}

	if (mmu->pg_sz_k != FUNC3(PAGE_SIZE))
		FUNC9("MMU pg size != PAGE_SIZE (%luk)\n", FUNC3(PAGE_SIZE));

	if (FUNC2(CONFIG_TRANSPARENT_HUGEPAGE) &&
	    mmu->s_pg_sz_m != FUNC4(HPAGE_PMD_SIZE))
		FUNC9("MMU Super pg size != Linux HPAGE_PMD_SIZE (%luM)\n",
		      (unsigned long)FUNC4(HPAGE_PMD_SIZE));

	if (FUNC2(CONFIG_ARC_HAS_PAE40) && !mmu->pae)
		FUNC9("Hardware doesn't support PAE40\n");

	/* Enable the MMU */
	FUNC12(ARC_REG_PID, MMU_ENABLE);

	/* In smp we use this reg for interrupt 1 scratch */
#ifndef CONFIG_SMP
	/* swapper_pg_dir is the pgd for the kernel, used by vmalloc */
	FUNC12(ARC_REG_SCRATCH_DATA0, swapper_pg_dir);
#endif

	if (FUNC8())
		FUNC12(ARC_REG_TLBPD1HI, 0);
}
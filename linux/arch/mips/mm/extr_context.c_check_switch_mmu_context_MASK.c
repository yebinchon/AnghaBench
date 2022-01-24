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
typedef  int u64 ;
struct mm_struct {int /*<<< orphan*/  pgd; } ;
struct TYPE_2__ {int /*<<< orphan*/  asid_cache; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  boot_cpu_data ; 
 int /*<<< orphan*/  FUNC5 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int,struct mm_struct*) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (unsigned int,struct mm_struct*) ; 
 TYPE_1__* cpu_data ; 
 int /*<<< orphan*/  cpu_has_mmid ; 
 scalar_t__ cpu_has_shared_ftlb_entries ; 
 scalar_t__ cpu_has_vtag_icache ; 
 int /*<<< orphan*/  cpu_mmid_lock ; 
 int /*<<< orphan*/ * cpu_sibling_map ; 
 int /*<<< orphan*/  FUNC10 (unsigned int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int FUNC14 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  mmid_version ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned int FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  tlb_flush_pending ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int) ; 

void FUNC24(struct mm_struct *mm)
{
	unsigned int cpu = FUNC20();
	u64 ctx, old_active_mmid;
	unsigned long flags;

	if (!cpu_has_mmid) {
		FUNC5(mm);
		FUNC22(FUNC7(cpu, mm));
		goto setup_pgd;
	}

	/*
	 * MMID switch fast-path, to avoid acquiring cpu_mmid_lock when it's
	 * unnecessary.
	 *
	 * The memory ordering here is subtle. If our active_mmids is non-zero
	 * and the MMID matches the current version, then we update the CPU's
	 * asid_cache with a relaxed cmpxchg. Racing with a concurrent rollover
	 * means that either:
	 *
	 * - We get a zero back from the cmpxchg and end up waiting on
	 *   cpu_mmid_lock in check_mmu_context(). Taking the lock synchronises
	 *   with the rollover and so we are forced to see the updated
	 *   generation.
	 *
	 * - We get a valid MMID back from the cmpxchg, which means the
	 *   relaxed xchg in flush_context will treat us as reserved
	 *   because atomic RmWs are totally ordered for a given location.
	 */
	ctx = FUNC9(cpu, mm);
	old_active_mmid = FUNC0(cpu_data[cpu].asid_cache);
	if (!old_active_mmid ||
	    !FUNC3(cpu, ctx, FUNC4(&mmid_version)) ||
	    !FUNC6(&cpu_data[cpu].asid_cache, old_active_mmid, ctx)) {
		FUNC18(&cpu_mmid_lock, flags);

		ctx = FUNC9(cpu, mm);
		if (!FUNC3(cpu, ctx, FUNC4(&mmid_version)))
			ctx = FUNC14(mm);

		FUNC2(cpu_data[cpu].asid_cache, ctx);
		FUNC19(&cpu_mmid_lock, flags);
	}

	/*
	 * Invalidate the local TLB if needed. Note that we must only clear our
	 * bit in tlb_flush_pending after this is complete, so that the
	 * cpu_has_shared_ftlb_entries case below isn't misled.
	 */
	if (FUNC12(cpu, &tlb_flush_pending)) {
		if (cpu_has_vtag_icache)
			FUNC13();
		FUNC16();
		FUNC10(cpu, &tlb_flush_pending);
	}

	FUNC23(ctx & FUNC8(&boot_cpu_data));

	/*
	 * If this CPU shares FTLB entries with its siblings and one or more of
	 * those siblings hasn't yet invalidated its TLB following a version
	 * increase then we need to invalidate any TLB entries for our MMID
	 * that we might otherwise pick up from a sibling.
	 *
	 * We ifdef on CONFIG_SMP because cpu_sibling_map isn't defined in
	 * CONFIG_SMP=n kernels.
	 */
#ifdef CONFIG_SMP
	if (cpu_has_shared_ftlb_entries &&
	    cpumask_intersects(&tlb_flush_pending, &cpu_sibling_map[cpu])) {
		/* Ensure we operate on the new MMID */
		mtc0_tlbw_hazard();

		/*
		 * Invalidate all TLB entries associated with the new
		 * MMID, and wait for the invalidation to complete.
		 */
		ginvt_mmid();
		sync_ginv();
	}
#endif

setup_pgd:
	FUNC1(mm->pgd);
}
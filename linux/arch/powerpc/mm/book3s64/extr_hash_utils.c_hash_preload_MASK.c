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
struct mm_struct {int /*<<< orphan*/  context; int /*<<< orphan*/ * pgd; } ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct mm_struct*,int /*<<< orphan*/ *,unsigned long,unsigned long,unsigned long) ; 
 int HPTE_LOCAL_UPDATE ; 
 int H_PAGE_4K_PFN ; 
 scalar_t__ MMU_PAGE_64K ; 
 scalar_t__ USER_REGION_ID ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 unsigned long _PAGE_EXEC ; 
 unsigned long _PAGE_PRESENT ; 
 unsigned long _PAGE_READ ; 
 int FUNC3 (unsigned long,unsigned long,unsigned long,int /*<<< orphan*/ *,unsigned long,int,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (unsigned long,unsigned long,unsigned long,int /*<<< orphan*/ *,unsigned long,int,int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC6 (unsigned long) ; 
 unsigned long FUNC7 (int /*<<< orphan*/ *,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC8 (unsigned long,unsigned long,unsigned long,unsigned long,int,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC9 (unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (unsigned long) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (struct mm_struct*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct mm_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC16 (struct mm_struct*,unsigned long) ; 
 int FUNC17 (unsigned long) ; 

__attribute__((used)) static void FUNC18(struct mm_struct *mm, unsigned long ea,
			 bool is_exec, unsigned long trap)
{
	int hugepage_shift;
	unsigned long vsid;
	pgd_t *pgdir;
	pte_t *ptep;
	unsigned long flags;
	int rc, ssize, update_flags = 0;
	unsigned long access = _PAGE_PRESENT | _PAGE_READ | (is_exec ? _PAGE_EXEC : 0);

	FUNC0(FUNC6(ea) != USER_REGION_ID);

	if (!FUNC15(mm, ea))
		return;

	FUNC1("hash_preload(mm=%p, mm->pgdir=%p, ea=%016lx, access=%lx,"
		" trap=%lx\n", mm, mm->pgd, ea, access, trap);

	/* Get Linux PTE if available */
	pgdir = mm->pgd;
	if (pgdir == NULL)
		return;

	/* Get VSID */
	ssize = FUNC17(ea);
	vsid = FUNC7(&mm->context, ea, ssize);
	if (!vsid)
		return;
	/*
	 * Hash doesn't like irqs. Walking linux page table with irq disabled
	 * saves us from holding multiple locks.
	 */
	FUNC10(flags);

	/*
	 * THP pages use update_mmu_cache_pmd. We don't do
	 * hash preload there. Hence can ignore THP here
	 */
	ptep = FUNC5(pgdir, ea, NULL, &hugepage_shift);
	if (!ptep)
		goto out_exit;

	FUNC2(hugepage_shift);
#ifdef CONFIG_PPC_64K_PAGES
	/* If either H_PAGE_4K_PFN or cache inhibited is set (and we are on
	 * a 64K kernel), then we don't preload, hash_page() will take
	 * care of it once we actually try to access the page.
	 * That way we don't have to duplicate all of the logic for segment
	 * page size demotion here
	 */
	if ((pte_val(*ptep) & H_PAGE_4K_PFN) || pte_ci(*ptep))
		goto out_exit;
#endif /* CONFIG_PPC_64K_PAGES */

	/* Is that local to this CPU ? */
	if (FUNC12(mm))
		update_flags |= HPTE_LOCAL_UPDATE;

	/* Hash it in */
#ifdef CONFIG_PPC_64K_PAGES
	if (mm_ctx_user_psize(&mm->context) == MMU_PAGE_64K)
		rc = __hash_page_64K(ea, access, vsid, ptep, trap,
				     update_flags, ssize);
	else
#endif /* CONFIG_PPC_64K_PAGES */
		rc = FUNC3(ea, access, vsid, ptep, trap, update_flags,
				    ssize, FUNC16(mm, ea));

	/* Dump some info in case of hash insertion failure, they should
	 * never happen so it is really useful to know if/when they do
	 */
	if (rc == -1)
		FUNC8(ea, access, vsid, trap, ssize,
				   FUNC11(&mm->context),
				   FUNC11(&mm->context),
				   FUNC14(*ptep));
out_exit:
	FUNC9(flags);
}
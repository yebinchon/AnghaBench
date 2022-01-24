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
struct vm_area_struct {int vm_flags; } ;
struct page {int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  pte_t ;

/* Variables and functions */
 int /*<<< orphan*/  MMU_FTR_HPTE_TABLE ; 
 int /*<<< orphan*/  PG_arch_1 ; 
 int VM_EXEC ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct page* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static pte_t FUNC10(pte_t pte, struct vm_area_struct *vma,
				     int dirty)
{
	struct page *pg;

	if (FUNC4(MMU_FTR_HPTE_TABLE))
		return pte;

	/* So here, we only care about exec faults, as we use them
	 * to recover lost _PAGE_EXEC and perform I$/D$ coherency
	 * if necessary. Also if _PAGE_EXEC is already set, same deal,
	 * we just bail out
	 */
	if (dirty || FUNC5(pte) || !FUNC2())
		return pte;

#ifdef CONFIG_DEBUG_VM
	/* So this is an exec fault, _PAGE_EXEC is not set. If it was
	 * an error we would have bailed out earlier in do_page_fault()
	 * but let's make sure of it
	 */
	if (WARN_ON(!(vma->vm_flags & VM_EXEC)))
		return pte;
#endif /* CONFIG_DEBUG_VM */

	/* If you set _PAGE_EXEC on weird pages you're on your own */
	pg = FUNC3(pte);
	if (FUNC9(!pg))
		goto bail;

	/* If the page is already clean, we move on */
	if (FUNC8(PG_arch_1, &pg->flags))
		goto bail;

	/* Clean the page and set PG_arch_1 */
	FUNC1(pg);
	FUNC7(PG_arch_1, &pg->flags);

 bail:
	return FUNC6(pte);
}
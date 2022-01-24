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
struct vm_area_struct {int vm_flags; struct mm_struct* vm_mm; } ;
struct mm_struct {int dummy; } ;
typedef  int /*<<< orphan*/  pud_t ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned long) ; 
 unsigned long PAGE_SHIFT ; 
 scalar_t__ PAGE_SIZE ; 
 int VM_EXEC ; 
 int _PAGE_PRESENT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct mm_struct*) ; 
 int /*<<< orphan*/ * FUNC2 (struct mm_struct*,unsigned long) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__,unsigned long) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (unsigned long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (unsigned long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static void FUNC11(struct vm_area_struct *vma,
				 unsigned long addr, unsigned long pfn)
{
	unsigned long kaddr = FUNC0(pfn << PAGE_SHIFT);
	int exec = vma->vm_flags & VM_EXEC;
	struct mm_struct *mm = vma->vm_mm;
	pgd_t *pgdp;
	pud_t *pudp;
	pmd_t *pmdp;
	pte_t *ptep;

	FUNC4("cpage[%08llx,%08lx]\n",
		 FUNC1(FUNC10(), mm), addr);

	/* No ASID => no such page in the cache.  */
	if (FUNC1(FUNC10(), mm) == 0)
		return;

	pgdp = FUNC2(mm, addr);
	pudp = FUNC7(pgdp, addr);
	pmdp = FUNC3(pudp, addr);
	ptep = FUNC5(pmdp, addr);

	/* Invalid => no such page in the cache.  */
	if (!(FUNC6(*ptep) & _PAGE_PRESENT))
		return;

	FUNC8(kaddr, kaddr + PAGE_SIZE);
	if (exec)
		FUNC9(kaddr, kaddr + PAGE_SIZE);
}
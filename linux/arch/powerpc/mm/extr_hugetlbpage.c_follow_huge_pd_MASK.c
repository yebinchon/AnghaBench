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
struct vm_area_struct {struct mm_struct* vm_mm; } ;
struct page {int dummy; } ;
struct mm_struct {int /*<<< orphan*/  page_table_lock; } ;
typedef  int /*<<< orphan*/  spinlock_t ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  hugepd_t ;

/* Variables and functions */
 int FOLL_GET ; 
 unsigned long PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct mm_struct*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,unsigned long,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 struct page* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

struct page *FUNC9(struct vm_area_struct *vma,
			    unsigned long address, hugepd_t hpd,
			    int flags, int pdshift)
{
	pte_t *ptep;
	spinlock_t *ptl;
	struct page *page = NULL;
	unsigned long mask;
	int shift = FUNC2(hpd);
	struct mm_struct *mm = vma->vm_mm;

retry:
	/*
	 * hugepage directory entries are protected by mm->page_table_lock
	 * Use this instead of huge_pte_lockptr
	 */
	ptl = &mm->page_table_lock;
	FUNC7(ptl);

	ptep = FUNC3(hpd, address, pdshift);
	if (FUNC6(*ptep)) {
		mask = (1UL << shift) - 1;
		page = FUNC5(*ptep);
		page += ((address & mask) >> PAGE_SHIFT);
		if (flags & FOLL_GET)
			FUNC1(page);
	} else {
		if (FUNC4(*ptep)) {
			FUNC8(ptl);
			FUNC0(mm, ptep, ptl);
			goto retry;
		}
	}
	FUNC8(ptl);
	return page;
}
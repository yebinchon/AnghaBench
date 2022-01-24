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
struct TYPE_2__ {unsigned int hugetlb_pte_count; } ;
struct mm_struct {TYPE_1__ context; } ;
typedef  int /*<<< orphan*/  pte_t ;

/* Variables and functions */
 unsigned long HPAGE_SIZE ; 
 unsigned int PAGE_SHIFT ; 
 unsigned int PMD_SHIFT ; 
 unsigned long PMD_SIZE ; 
 unsigned int PUD_SHIFT ; 
 unsigned long PUD_SIZE ; 
 unsigned long REAL_HPAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

pte_t FUNC6(struct mm_struct *mm, unsigned long addr,
			      pte_t *ptep)
{
	unsigned int i, nptes, orig_shift, shift;
	unsigned long size;
	pte_t entry;

	entry = *ptep;
	size = FUNC2(entry);

	shift = PAGE_SHIFT;
	if (size >= PUD_SIZE)
		shift = PUD_SHIFT;
	else if (size >= PMD_SIZE)
		shift = PMD_SHIFT;
	else
		shift = PAGE_SHIFT;

	nptes = size >> shift;
	orig_shift = FUNC4(entry) ? PAGE_SHIFT : FUNC1(entry);

	if (FUNC5(entry))
		mm->context.hugetlb_pte_count -= nptes;

	addr &= ~(size - 1);
	for (i = 0; i < nptes; i++)
		ptep[i] = FUNC0(0UL);

	FUNC3(mm, addr, ptep, entry, 0, orig_shift);
	/* An HPAGE_SIZE'ed page is composed of two REAL_HPAGE_SIZE'ed pages */
	if (size == HPAGE_SIZE)
		FUNC3(mm, addr + REAL_HPAGE_SIZE, ptep, entry, 0,
				    orig_shift);

	return entry;
}
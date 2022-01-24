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
struct TYPE_2__ {unsigned int id; } ;
struct mm_struct {TYPE_1__ context; } ;
typedef  int /*<<< orphan*/  pmd_t ;

/* Variables and functions */
 int /*<<< orphan*/  Hash ; 
 unsigned long PAGE_MASK ; 
 unsigned long PAGE_SHIFT ; 
 unsigned long PGDIR_MASK ; 
 unsigned long PGDIR_SIZE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,unsigned long,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mm_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static void FUNC7(struct mm_struct *mm, unsigned long start,
			unsigned long end)
{
	pmd_t *pmd;
	unsigned long pmd_end;
	int count;
	unsigned int ctx = mm->context.id;

	if (!Hash) {
		FUNC0();
		return;
	}
	start &= PAGE_MASK;
	if (start >= end)
		return;
	end = (end - 1) | ~PAGE_MASK;
	pmd = FUNC4(FUNC6(FUNC2(mm, start), start), start);
	for (;;) {
		pmd_end = ((start + PGDIR_SIZE) & PGDIR_MASK) - 1;
		if (pmd_end > end)
			pmd_end = end;
		if (!FUNC3(*pmd)) {
			count = ((pmd_end - start) >> PAGE_SHIFT) + 1;
			FUNC1(ctx, start, FUNC5(*pmd), count);
		}
		if (pmd_end == end)
			break;
		start = pmd_end + 1;
		++pmd;
	}
}
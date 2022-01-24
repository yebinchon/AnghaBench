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
typedef  int /*<<< orphan*/  u32 ;
struct subpage_prot_table {unsigned long maxaddr; int /*<<< orphan*/ *** protptrs; int /*<<< orphan*/ ** low_prot; } ;
struct mm_struct {int /*<<< orphan*/  context; } ;

/* Variables and functions */
 scalar_t__ PAGE_SIZE ; 
 unsigned long SBP_L2_COUNT ; 
 int TASK_SIZE_USER64 ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct subpage_prot_table*) ; 
 struct subpage_prot_table* FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct mm_struct *mm)
{
	struct subpage_prot_table *spt = FUNC2(&mm->context);
	unsigned long i, j, addr;
	u32 **p;

	if (!spt)
		return;

	for (i = 0; i < 4; ++i) {
		if (spt->low_prot[i]) {
			FUNC0((unsigned long)spt->low_prot[i]);
			spt->low_prot[i] = NULL;
		}
	}
	addr = 0;
	for (i = 0; i < (TASK_SIZE_USER64 >> 43); ++i) {
		p = spt->protptrs[i];
		if (!p)
			continue;
		spt->protptrs[i] = NULL;
		for (j = 0; j < SBP_L2_COUNT && addr < spt->maxaddr;
		     ++j, addr += PAGE_SIZE)
			if (p[j])
				FUNC0((unsigned long)p[j]);
		FUNC0((unsigned long)p);
	}
	spt->maxaddr = 0;
	FUNC1(spt);
}
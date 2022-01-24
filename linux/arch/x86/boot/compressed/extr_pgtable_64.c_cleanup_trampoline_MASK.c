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

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int TRAMPOLINE_32BIT_PGTABLE_OFFSET ; 
 int /*<<< orphan*/  TRAMPOLINE_32BIT_SIZE ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 void* trampoline_32bit ; 
 void* trampoline_save ; 

void FUNC3(void *pgtable)
{
	void *trampoline_pgtable;

	trampoline_pgtable = trampoline_32bit + TRAMPOLINE_32BIT_PGTABLE_OFFSET / sizeof(unsigned long);

	/*
	 * Move the top level page table out of trampoline memory,
	 * if it's there.
	 */
	if ((void *)FUNC0() == trampoline_pgtable) {
		FUNC1(pgtable, trampoline_pgtable, PAGE_SIZE);
		FUNC2((unsigned long)pgtable);
	}

	/* Restore trampoline memory */
	FUNC1(trampoline_32bit, trampoline_save, TRAMPOLINE_32BIT_SIZE);
}
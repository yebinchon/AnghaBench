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
 int FUNC0 (unsigned long) ; 
 unsigned long PAGE_MASK ; 
 int PAGE_SIZE ; 
 void* FUNC1 (void*,void*,unsigned long) ; 
 void* FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,int) ; 

void *FUNC6(void *funcp, unsigned long size)
{
	void *sram;
	unsigned long base;
	int pages;
	void *dst = NULL;

	sram = FUNC2(size);
	if (!sram)
		return NULL;

	base = (unsigned long)sram & PAGE_MASK;
	pages = FUNC0(size) / PAGE_SIZE;

	FUNC4(base, pages);

	dst = FUNC1(sram, funcp, size);

	FUNC3(base, pages);
	FUNC5(base, pages);

	return dst;
}
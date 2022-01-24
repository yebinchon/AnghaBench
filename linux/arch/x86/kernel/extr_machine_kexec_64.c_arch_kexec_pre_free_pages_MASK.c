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
 int /*<<< orphan*/  FUNC0 (unsigned long,unsigned int) ; 
 scalar_t__ FUNC1 () ; 

void FUNC2(void *vaddr, unsigned int pages)
{
	if (FUNC1())
		return;

	/*
	 * If SME is active we need to reset the pages back to being
	 * an encrypted mapping before freeing them.
	 */
	FUNC0((unsigned long)vaddr, pages);
}
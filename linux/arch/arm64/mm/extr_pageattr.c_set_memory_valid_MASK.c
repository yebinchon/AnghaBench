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
 int PAGE_SIZE ; 
 int /*<<< orphan*/  PTE_VALID ; 
 int FUNC0 (unsigned long,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

int FUNC2(unsigned long addr, int numpages, int enable)
{
	if (enable)
		return FUNC0(addr, PAGE_SIZE * numpages,
					FUNC1(PTE_VALID),
					FUNC1(0));
	else
		return FUNC0(addr, PAGE_SIZE * numpages,
					FUNC1(0),
					FUNC1(PTE_VALID));
}
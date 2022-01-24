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
 int _PAGE_NX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int __supported_pte_mask ; 
 int FUNC1 (unsigned long*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(unsigned long addr, int numpages)
{
	if (!(__supported_pte_mask & _PAGE_NX))
		return 0;

	return FUNC1(&addr, numpages, FUNC0(_PAGE_NX), 0);
}
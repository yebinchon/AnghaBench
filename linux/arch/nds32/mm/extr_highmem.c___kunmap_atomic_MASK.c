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
typedef  int /*<<< orphan*/  pte_t ;

/* Variables and functions */
 scalar_t__ FIXADDR_START ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC8(void *kvaddr)
{
	if (kvaddr >= (void *)FIXADDR_START) {
		unsigned long vaddr = (unsigned long)kvaddr;
		pte_t *ptep;
		FUNC2();
		FUNC1(vaddr);
		FUNC0();
		ptep = FUNC6(FUNC4(vaddr), vaddr);
		FUNC7(ptep, 0);
	}
	FUNC3();
	FUNC5();
}
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

/* Variables and functions */
 int /*<<< orphan*/  C0_BADVADDR ; 
 int /*<<< orphan*/  C0_CONTEXT ; 
 scalar_t__ pgd_current ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,unsigned int,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,unsigned int,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,unsigned int,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,unsigned int,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC8 (long) ; 
 int /*<<< orphan*/  FUNC9 (long) ; 

__attribute__((used)) static void
FUNC10(u32 **p, unsigned int pte,
				   unsigned int ptr)
{
	long pgdc = (long)pgd_current;

	FUNC4(p, pte, C0_BADVADDR);
	FUNC2(p, ptr, FUNC8(pgdc)); /* cp0 delay */
	FUNC3(p, ptr, FUNC9(pgdc), ptr);
	FUNC6(p, pte, pte, 22); /* load delay */
	FUNC5(p, pte, pte, 2);
	FUNC0(p, ptr, ptr, pte);
	FUNC4(p, pte, C0_CONTEXT);
	FUNC3(p, ptr, 0, ptr); /* cp0 delay */
	FUNC1(p, pte, pte, 0xffc); /* load delay */
	FUNC0(p, ptr, ptr, pte);
	FUNC3(p, pte, 0, ptr);
	FUNC7(p); /* load delay */
}
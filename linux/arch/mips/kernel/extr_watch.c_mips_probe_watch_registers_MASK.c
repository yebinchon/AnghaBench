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
struct cpuinfo_mips {int options; unsigned int* watch_reg_masks; int watch_reg_count; int watch_reg_use_cnt; } ;

/* Variables and functions */
 int MIPS_CPU_WATCH ; 
 unsigned int MIPS_WATCHHI_M ; 
 unsigned int MIPS_WATCHHI_MASK ; 
 unsigned int MIPS_WATCHLO_IRW ; 
 int /*<<< orphan*/  FUNC0 () ; 
 unsigned int FUNC1 () ; 
 unsigned int FUNC2 () ; 
 unsigned int FUNC3 () ; 
 unsigned int FUNC4 () ; 
 unsigned int FUNC5 () ; 
 unsigned int FUNC6 () ; 
 unsigned int FUNC7 () ; 
 unsigned int FUNC8 () ; 
 unsigned int FUNC9 () ; 
 unsigned int FUNC10 () ; 
 unsigned int FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (unsigned int) ; 
 int /*<<< orphan*/  FUNC14 (unsigned int) ; 
 int /*<<< orphan*/  FUNC15 (unsigned int) ; 
 int /*<<< orphan*/  FUNC16 (unsigned int) ; 
 int /*<<< orphan*/  FUNC17 (unsigned int) ; 
 int /*<<< orphan*/  FUNC18 (unsigned int) ; 
 int /*<<< orphan*/  FUNC19 (unsigned int) ; 

void FUNC20(struct cpuinfo_mips *c)
{
	unsigned int t;

	if ((c->options & MIPS_CPU_WATCH) == 0)
		return;
	/*
	 * Check which of the I,R and W bits are supported, then
	 * disable the register.
	 */
	FUNC16(MIPS_WATCHLO_IRW);
	FUNC0();
	t = FUNC8();
	FUNC16(0);
	c->watch_reg_masks[0] = t & MIPS_WATCHLO_IRW;

	/* Write the mask bits and read them back to determine which
	 * can be used. */
	c->watch_reg_count = 1;
	c->watch_reg_use_cnt = 1;
	t = FUNC1();
	FUNC12(t | MIPS_WATCHHI_MASK);
	FUNC0();
	t = FUNC1();
	c->watch_reg_masks[0] |= (t & MIPS_WATCHHI_MASK);
	if ((t & MIPS_WATCHHI_M) == 0)
		return;

	FUNC17(MIPS_WATCHLO_IRW);
	FUNC0();
	t = FUNC9();
	FUNC17(0);
	c->watch_reg_masks[1] = t & MIPS_WATCHLO_IRW;

	c->watch_reg_count = 2;
	c->watch_reg_use_cnt = 2;
	t = FUNC2();
	FUNC13(t | MIPS_WATCHHI_MASK);
	FUNC0();
	t = FUNC2();
	c->watch_reg_masks[1] |= (t & MIPS_WATCHHI_MASK);
	if ((t & MIPS_WATCHHI_M) == 0)
		return;

	FUNC18(MIPS_WATCHLO_IRW);
	FUNC0();
	t = FUNC10();
	FUNC18(0);
	c->watch_reg_masks[2] = t & MIPS_WATCHLO_IRW;

	c->watch_reg_count = 3;
	c->watch_reg_use_cnt = 3;
	t = FUNC3();
	FUNC14(t | MIPS_WATCHHI_MASK);
	FUNC0();
	t = FUNC3();
	c->watch_reg_masks[2] |= (t & MIPS_WATCHHI_MASK);
	if ((t & MIPS_WATCHHI_M) == 0)
		return;

	FUNC19(MIPS_WATCHLO_IRW);
	FUNC0();
	t = FUNC11();
	FUNC19(0);
	c->watch_reg_masks[3] = t & MIPS_WATCHLO_IRW;

	c->watch_reg_count = 4;
	c->watch_reg_use_cnt = 4;
	t = FUNC4();
	FUNC15(t | MIPS_WATCHHI_MASK);
	FUNC0();
	t = FUNC4();
	c->watch_reg_masks[3] |= (t & MIPS_WATCHHI_MASK);
	if ((t & MIPS_WATCHHI_M) == 0)
		return;

	/* We use at most 4, but probe and report up to 8. */
	c->watch_reg_count = 5;
	t = FUNC5();
	if ((t & MIPS_WATCHHI_M) == 0)
		return;

	c->watch_reg_count = 6;
	t = FUNC6();
	if ((t & MIPS_WATCHHI_M) == 0)
		return;

	c->watch_reg_count = 7;
	t = FUNC7();
	if ((t & MIPS_WATCHHI_M) == 0)
		return;

	c->watch_reg_count = 8;
}
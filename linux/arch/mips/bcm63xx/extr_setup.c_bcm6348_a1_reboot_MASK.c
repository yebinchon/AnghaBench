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
 int /*<<< orphan*/  CONF_CM_CMASK ; 
 int /*<<< orphan*/  CONF_CM_UNCACHED ; 
 int /*<<< orphan*/  PERF_SOFTRESET_REG ; 
 int /*<<< orphan*/  SOFTRESET_6348_ALL ; 
 int ST0_BEV ; 
 int ST0_ERL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(void)
{
	u32 reg;

	/* soft reset all blocks */
	FUNC5("soft-resetting all blocks ...\n");
	reg = FUNC1(PERF_SOFTRESET_REG);
	reg &= ~SOFTRESET_6348_ALL;
	FUNC2(reg, PERF_SOFTRESET_REG);
	FUNC4(10);

	reg = FUNC1(PERF_SOFTRESET_REG);
	reg |= SOFTRESET_6348_ALL;
	FUNC2(reg, PERF_SOFTRESET_REG);
	FUNC4(10);

	/* Jump to the power on address. */
	FUNC5("jumping to reset vector.\n");
	/* set high vectors (base at 0xbfc00000 */
	FUNC6(ST0_BEV | ST0_ERL);
	/* run uncached in kseg0 */
	FUNC3(CONF_CM_CMASK, CONF_CM_UNCACHED);
	FUNC0();
	/* remove all wired TLB entries */
	FUNC7(0);
	__asm__ __volatile__(
		"jr\t%0"
		:
		: "r" (0xbfc00000));
	while (1)
		;
}
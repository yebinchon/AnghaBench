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
 unsigned long CCR_CACHE_ICI ; 
 int /*<<< orphan*/  SH_CCR ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 

__attribute__((used)) static void FUNC6(void)
{
	unsigned long flags, ccr;

	FUNC5(flags);
	FUNC3();

	/* Flush I-cache */
	ccr = FUNC0(SH_CCR);
	ccr |= CCR_CACHE_ICI;
	FUNC1(ccr, SH_CCR);

	/*
	 * back_to_cached() will take care of the barrier for us, don't add
	 * another one!
	 */

	FUNC2();
	FUNC4(flags);
}
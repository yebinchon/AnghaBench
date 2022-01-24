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
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 unsigned long STBCR_LTSLP ; 
 unsigned long STBCR_MSTP ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 unsigned long STBCR_RESET ; 
 scalar_t__ FUNC2 () ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 unsigned long FUNC6 (unsigned long) ; 

__attribute__((used)) static void FUNC7(unsigned int cpu, unsigned long entry_point)
{
	if (FUNC2())
		FUNC4(entry_point, FUNC0(cpu));
	else
		FUNC4(FUNC6(entry_point), FUNC0(cpu));

	if (!(FUNC3(FUNC1(cpu)) & STBCR_MSTP))
		FUNC4(STBCR_MSTP, FUNC1(cpu));

	while (!(FUNC3(FUNC1(cpu)) & STBCR_MSTP))
		FUNC5();

	/* Start up secondary processor by sending a reset */
	FUNC4(STBCR_RESET | STBCR_LTSLP, FUNC1(cpu));
}
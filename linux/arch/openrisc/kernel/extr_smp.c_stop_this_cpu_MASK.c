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
 int /*<<< orphan*/  SPR_PMR ; 
 int SPR_PMR_DME ; 
 int /*<<< orphan*/  SPR_UPR ; 
 int SPR_UPR_PMP ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void FUNC5(void *dummy)
{
	/* Remove this CPU */
	FUNC3(FUNC4(), false);

	FUNC0();
	/* CPU Doze */
	if (FUNC1(SPR_UPR) & SPR_UPR_PMP)
		FUNC2(SPR_PMR, FUNC1(SPR_PMR) | SPR_PMR_DME);
	/* If that didn't work, infinite loop */
	while (1)
		;
}
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
 int /*<<< orphan*/  SEL0 ; 
 int /*<<< orphan*/  SEL1 ; 
 int /*<<< orphan*/  SEL2 ; 
 int /*<<< orphan*/  SEL3 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC3(void)
{
	if (!FUNC2(SEL0, "sel0")) {
		FUNC0(SEL0);
		FUNC1(SEL0, true);
	}

	if (!FUNC2(SEL1, "sel1")) {
		FUNC0(SEL1);
		FUNC1(SEL1, true);
	}

	if (!FUNC2(SEL2, "sel2")) {
		FUNC0(SEL2);
		FUNC1(SEL2, true);
	}

	if (!FUNC2(SEL3, "sel3")) {
		FUNC0(SEL3);
		FUNC1(SEL3, true);
	}
}
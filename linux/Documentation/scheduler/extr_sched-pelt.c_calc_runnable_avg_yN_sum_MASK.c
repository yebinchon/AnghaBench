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
 int HALFLIFE ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int sum ; 
 int y ; 

void FUNC1(void)
{
	int i;

	FUNC0("static const u32 runnable_avg_yN_sum[] = {\n\t    0,");
	for (i = 1; i <= HALFLIFE; i++) {
		if (i == 1)
			sum *= y;
		else
			sum = sum*y + 1024*y;

		if (i % 11 == 0)
			FUNC0("\n\t");

		FUNC0("%5d,", sum);
	}
	FUNC0("\n};\n\n");
}
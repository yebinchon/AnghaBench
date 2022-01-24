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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int tb_req ; 
 int timebase ; 

__attribute__((used)) static void FUNC5(void)
{
	unsigned long flags;

	FUNC2(flags);

	tb_req = 1;
	FUNC3();
	while (!timebase)
		FUNC0();
	FUNC3();
	FUNC4(timebase >> 32, timebase & 0xffffffff);
	timebase = 0;
	FUNC3();

	FUNC1(flags);
}
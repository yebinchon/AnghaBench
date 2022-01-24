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
typedef  int u64 ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(void)
{
	u64 regx, ipx;
	int coreid = FUNC2();
	u64 base = FUNC0(coreid);

	/*
	 * Disable All CIU2 Interrupts. The ones we need will be
	 * enabled later.  Read the SUM register so we know the write
	 * completed.
	 *
	 * There are 9 registers and 3 IPX levels with strides 0x1000
	 * and 0x200 respectivly.  Use loops to clear them.
	 */
	for (regx = 0; regx <= 0x8000; regx += 0x1000) {
		for (ipx = 0; ipx <= 0x400; ipx += 0x200)
			FUNC4(base + regx + ipx, 0);
	}

	FUNC3(FUNC1(coreid));
}
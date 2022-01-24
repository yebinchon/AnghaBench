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
 int /*<<< orphan*/  BCSR_BOARD ; 
 int BCSR_BOARD_PB1100_SD0PWR ; 
 int BCSR_BOARD_SD0PWR ; 
 int /*<<< orphan*/  BCSR_WHOAMI ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ BCSR_WHOAMI_DB1100 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(void *mmc_host, int state)
{
	int bit;

	if (FUNC0(FUNC2(BCSR_WHOAMI)) == BCSR_WHOAMI_DB1100)
		bit = BCSR_BOARD_SD0PWR;
	else
		bit = BCSR_BOARD_PB1100_SD0PWR;

	if (state) {
		FUNC1(BCSR_BOARD, 0, bit);
		FUNC3(400);	/* stabilization time */
	} else
		FUNC1(BCSR_BOARD, bit, 0);
}
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
 int ARCH_COMMAND_LINE_SIZE ; 
 scalar_t__* COMMAND_LINE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  early_command_line ; 
 scalar_t__ FUNC2 (scalar_t__*) ; 
 scalar_t__ ipl_block_valid ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*) ; 

void FUNC6(void)
{
	COMMAND_LINE[ARCH_COMMAND_LINE_SIZE - 1] = 0;
	/* convert arch command line to ascii if necessary */
	if (FUNC2(COMMAND_LINE))
		FUNC0(COMMAND_LINE, ARCH_COMMAND_LINE_SIZE);
	/* copy arch command line */
	FUNC4(early_command_line, FUNC5(COMMAND_LINE));

	/* append IPL PARM data to the boot command line */
	if (!FUNC3() && ipl_block_valid)
		FUNC1();
}
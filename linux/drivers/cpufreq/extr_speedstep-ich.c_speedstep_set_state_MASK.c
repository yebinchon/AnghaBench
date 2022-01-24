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
typedef  int u8 ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int pmbase ; 
 int /*<<< orphan*/  FUNC4 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  speedstep_processor ; 

__attribute__((used)) static void FUNC7(unsigned int state)
{
	u8 pm2_blk;
	u8 value;
	unsigned long flags;

	if (state > 0x1)
		return;

	/* Disable IRQs */
	FUNC2(flags);

	/* read state */
	value = FUNC0(pmbase + 0x50);

	FUNC4("read at pmbase 0x%x + 0x50 returned 0x%x\n", pmbase, value);

	/* write new state */
	value &= 0xFE;
	value |= state;

	FUNC4("writing 0x%x to pmbase 0x%x + 0x50\n", value, pmbase);

	/* Disable bus master arbitration */
	pm2_blk = FUNC0(pmbase + 0x20);
	pm2_blk |= 0x01;
	FUNC3(pm2_blk, (pmbase + 0x20));

	/* Actual transition */
	FUNC3(value, (pmbase + 0x50));

	/* Restore bus master arbitration */
	pm2_blk &= 0xfe;
	FUNC3(pm2_blk, (pmbase + 0x20));

	/* check if transition was successful */
	value = FUNC0(pmbase + 0x50);

	/* Enable IRQs */
	FUNC1(flags);

	FUNC4("read at pmbase 0x%x + 0x50 returned 0x%x\n", pmbase, value);

	if (state == (value & 0x1))
		FUNC4("change to %u MHz succeeded\n",
			FUNC6(speedstep_processor) / 1000);
	else
		FUNC5("change failed - I/O error\n");

	return;
}
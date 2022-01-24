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
struct dsa_switch {int dummy; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int NUM_PORTS ; 
 int /*<<< orphan*/  REG_GLOBAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct dsa_switch *ds)
{
	int i;
	int ret;

	/*
	 * Set all ports to the disabled state.
	 */
	for (i = 0; i < NUM_PORTS; i++) {
		ret = FUNC1(FUNC0(i), 0x04);
		FUNC2(FUNC0(i), 0x04, ret & 0xfffc);
	}

	/*
	 * Wait for transmit queues to drain.
	 */
	FUNC3(2);

	/*
	 * Reset the switch.
	 */
	FUNC2(REG_GLOBAL, 0x0a, 0xa130);

	/*
	 * Wait up to one second for reset to complete.
	 */
	for (i = 0; i < 1000; i++) {
		ret = FUNC1(REG_GLOBAL, 0x00);
		if ((ret & 0x8000) == 0x0000)
			break;

		FUNC3(1);
	}
	if (i == 1000)
		return -ETIMEDOUT;

	return 0;
}
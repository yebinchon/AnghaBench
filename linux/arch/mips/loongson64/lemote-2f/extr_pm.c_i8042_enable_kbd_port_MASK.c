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
 int EIO ; 
 int /*<<< orphan*/  I8042_CMD_CTL_RCTR ; 
 int /*<<< orphan*/  I8042_CMD_CTL_WCTR ; 
 int /*<<< orphan*/  I8042_CTR_KBDDIS ; 
 int /*<<< orphan*/  I8042_CTR_KBDINT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  i8042_ctr ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static int FUNC2(void)
{
	if (FUNC0(&i8042_ctr, I8042_CMD_CTL_RCTR)) {
		FUNC1("i8042.c: Can't read CTR while enabling i8042 kbd port."
		       "\n");
		return -EIO;
	}

	i8042_ctr &= ~I8042_CTR_KBDDIS;
	i8042_ctr |= I8042_CTR_KBDINT;

	if (FUNC0(&i8042_ctr, I8042_CMD_CTL_WCTR)) {
		i8042_ctr &= ~I8042_CTR_KBDINT;
		i8042_ctr |= I8042_CTR_KBDDIS;
		FUNC1("i8042.c: Failed to enable KBD port.\n");

		return -EIO;
	}

	return 0;
}
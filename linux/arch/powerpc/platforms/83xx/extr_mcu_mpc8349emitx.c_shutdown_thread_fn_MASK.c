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
struct mcu {int reg_ctrl; int /*<<< orphan*/  client; } ;

/* Variables and functions */
 int /*<<< orphan*/  HZ ; 
 int MCU_CTRL_BTN ; 
 int /*<<< orphan*/  MCU_REG_CTRL ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 struct mcu* glob_mcu ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(void *data)
{
	int ret;
	struct mcu *mcu = glob_mcu;

	while (!FUNC3()) {
		ret = FUNC1(mcu->client, MCU_REG_CTRL);
		if (ret < 0)
			FUNC4("MCU status reg read failed.\n");
		mcu->reg_ctrl = ret;


		if (mcu->reg_ctrl & MCU_CTRL_BTN) {
			FUNC2(mcu->client, MCU_REG_CTRL,
						  mcu->reg_ctrl & ~MCU_CTRL_BTN);

			FUNC0();
		}

		FUNC6(TASK_INTERRUPTIBLE);
		FUNC5(HZ);
	}

	return 0;
}
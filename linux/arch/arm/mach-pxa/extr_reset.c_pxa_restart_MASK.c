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
typedef  enum reboot_mode { ____Placeholder_reboot_mode } reboot_mode ;

/* Variables and functions */
#define  REBOOT_GPIO 130 
#define  REBOOT_HARD 129 
#define  REBOOT_SOFT 128 
 int /*<<< orphan*/  RESET_STATUS_ALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(enum reboot_mode mode, const char *cmd)
{
	FUNC4();
	FUNC3();

	FUNC0(RESET_STATUS_ALL);

	switch (mode) {
	case REBOOT_SOFT:
		/* Jump into ROM at address 0 */
		FUNC5(0);
		break;
	case REBOOT_GPIO:
		FUNC1();
		break;
	case REBOOT_HARD:
	default:
		FUNC2();
		break;
	}
}
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
 int /*<<< orphan*/  CORGI_GPIO_LED_GREEN ; 
 int /*<<< orphan*/  REBOOT_HARD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static void FUNC3(enum reboot_mode mode, const char *cmd)
{
	if (!FUNC1())
		/* Green LED on tells the bootloader to reboot */
		FUNC0(CORGI_GPIO_LED_GREEN, 1);

	FUNC2(REBOOT_HARD, cmd);
}
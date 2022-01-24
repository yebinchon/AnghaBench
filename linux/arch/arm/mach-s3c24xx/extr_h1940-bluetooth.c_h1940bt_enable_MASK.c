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
 int /*<<< orphan*/  GPIO_LED_BLINK ; 
 int /*<<< orphan*/  GPIO_LED_NO_BLINK_LOW ; 
 int /*<<< orphan*/  H1940_LATCH_BLUETOOTH_POWER ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(int on)
{
	if (on) {
		/* Power on the chip */
		FUNC1(H1940_LATCH_BLUETOOTH_POWER, 1);
		/* Reset the chip */
		FUNC3(10);

		FUNC1(FUNC0(1), 1);
		FUNC3(10);
		FUNC1(FUNC0(1), 0);

		FUNC2(NULL, GPIO_LED_BLINK, NULL, NULL);
	}
	else {
		FUNC1(FUNC0(1), 1);
		FUNC3(10);
		FUNC1(FUNC0(1), 0);
		FUNC3(10);
		FUNC1(H1940_LATCH_BLUETOOTH_POWER, 0);

		FUNC2(NULL, GPIO_LED_NO_BLINK_LOW, NULL, NULL);
	}
}
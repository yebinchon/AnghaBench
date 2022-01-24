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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S3C2410_GPB0_TOUT0 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(int enable)
{
	static int enabled;
	if (enabled == enable)
		return;
	if (!enable) {
			FUNC1(FUNC0(0), 0);
	} else {
			/* LED driver need a "push" to power on */
			FUNC1(FUNC0(0), 1);
			/* Warm up backlight for one period of PWM.
			 * Without this trick its almost impossible to
			 * enable backlight with low brightness value
			 */
			FUNC2(48000);
			FUNC3(FUNC0(0), S3C2410_GPB0_TOUT0);
	}
	enabled = enable;
}
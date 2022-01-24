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
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  lcd_pwm ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,char*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static int FUNC10(struct device *dev)
{
	FUNC3(FUNC5(FUNC2(0), "Backlight"));
	lcd_pwm = FUNC7(1, "RX1950 LCD");
	if (FUNC0(lcd_pwm)) {
		FUNC4(dev, "Unable to request PWM for LCD power!\n");
		return FUNC1(lcd_pwm);
	}

	/*
	 * FIXME: pwm_apply_args() should be removed when switching to
	 * the atomic PWM API.
	 */
	FUNC6(lcd_pwm);

	FUNC9(1);
	FUNC8(1);

	return 0;
}
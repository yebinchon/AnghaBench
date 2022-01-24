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
 int /*<<< orphan*/  LCD_PWM_DUTY ; 
 int /*<<< orphan*/  LCD_PWM_PERIOD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  S3C2410_GPB1_TOUT1 ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  lcd_pwm ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(int enable)
{
	int i;
	static int enabled;
	if (enabled == enable)
		return;
	if (!enable) {

		/* GPC11-GPC15->OUTPUT */
		for (i = 11; i < 16; i++)
			FUNC4(FUNC1(i), 1);

		/* Wait a bit here... */
		FUNC5(100);

		/* GPD2-GPD7->OUTPUT */
		/* GPD11-GPD15->OUTPUT */
		/* GPD2-GPD7->1, GPD11-GPD15->1 */
		for (i = 2; i < 8; i++)
			FUNC4(FUNC2(i), 1);
		for (i = 11; i < 16; i++)
			FUNC4(FUNC2(i), 1);

		/* Wait a bit here...*/
		FUNC5(100);

		/* GPB0->OUTPUT, GPB0->0 */
		FUNC4(FUNC0(0), 0);

		/* GPC1-GPC4->OUTPUT, GPC1-4->0 */
		for (i = 1; i < 5; i++)
			FUNC4(FUNC1(i), 0);

		/* GPC15-GPC11->0 */
		for (i = 11; i < 16; i++)
			FUNC4(FUNC1(i), 0);

		/* GPD15-GPD11->0, GPD2->GPD7->0 */
		for (i = 11; i < 16; i++)
			FUNC4(FUNC2(i), 0);

		for (i = 2; i < 8; i++)
			FUNC4(FUNC2(i), 0);

		/* GPC6->0, GPC7->0, GPC5->0 */
		FUNC4(FUNC1(6), 0);
		FUNC4(FUNC1(7), 0);
		FUNC4(FUNC1(5), 0);

		/* GPB1->OUTPUT, GPB1->0 */
		FUNC4(FUNC0(1), 0);
		FUNC6(lcd_pwm, 0, LCD_PWM_PERIOD);
		FUNC7(lcd_pwm);

		/* GPC0->0, GPC10->0 */
		FUNC4(FUNC1(0), 0);
		FUNC4(FUNC1(10), 0);
	} else {
		FUNC6(lcd_pwm, LCD_PWM_DUTY, LCD_PWM_PERIOD);
		FUNC8(lcd_pwm);

		FUNC4(FUNC1(0), 1);
		FUNC4(FUNC1(5), 1);

		FUNC9(FUNC0(1), S3C2410_GPB1_TOUT1);
		FUNC4(FUNC1(7), 1);

		for (i = 1; i < 5; i++)
			FUNC9(FUNC1(i), FUNC3(2));

		for (i = 11; i < 16; i++)
			FUNC9(FUNC1(i), FUNC3(2));

		for (i = 2; i < 8; i++)
			FUNC9(FUNC2(i), FUNC3(2));

		for (i = 11; i < 16; i++)
			FUNC9(FUNC2(i), FUNC3(2));

		FUNC4(FUNC1(10), 1);
		FUNC4(FUNC1(6), 1);
	}
	enabled = enable;
}
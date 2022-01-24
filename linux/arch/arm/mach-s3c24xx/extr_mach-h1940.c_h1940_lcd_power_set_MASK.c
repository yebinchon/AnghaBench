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
struct plat_lcd_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  H1940_LATCH_LCD_P0 ; 
 int /*<<< orphan*/  H1940_LATCH_LCD_P1 ; 
 int /*<<< orphan*/  H1940_LATCH_LCD_P2 ; 
 int /*<<< orphan*/  H1940_LATCH_LCD_P3 ; 
 int /*<<< orphan*/  H1940_LATCH_LCD_P4 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct plat_lcd_data *pd,
					unsigned int power)
{
	int value, retries = 100;

	if (!power) {
		FUNC5(FUNC0(0), 0);
		/* wait for 3ac */
		do {
			value = FUNC4(FUNC0(6));
		} while (value && retries--);

		FUNC5(H1940_LATCH_LCD_P2, 0);
		FUNC5(H1940_LATCH_LCD_P3, 0);
		FUNC5(H1940_LATCH_LCD_P4, 0);

		FUNC3(FUNC0(1), 0);
		FUNC3(FUNC0(4), 0);

		FUNC5(H1940_LATCH_LCD_P1, 0);
		FUNC5(H1940_LATCH_LCD_P0, 0);

		FUNC5(FUNC0(5), 0);

	} else {
		FUNC5(H1940_LATCH_LCD_P0, 1);
		FUNC5(H1940_LATCH_LCD_P1, 1);

		FUNC2(FUNC0(1));
		FUNC2(FUNC0(4));
		FUNC6(10);
		FUNC7(FUNC0(1), FUNC1(2));
		FUNC7(FUNC0(4), FUNC1(2));

		FUNC5(FUNC0(5), 1);
		FUNC5(FUNC0(0), 1);

		FUNC5(H1940_LATCH_LCD_P3, 1);
		FUNC5(H1940_LATCH_LCD_P2, 1);
		FUNC5(H1940_LATCH_LCD_P4, 1);
	}
}
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
 int /*<<< orphan*/  LCD_BIT_CL ; 
 int /*<<< orphan*/  LCD_BIT_DA ; 
 int /*<<< orphan*/  bits ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(int byte)
{
	int bit;

	/*
	 * the data bit is set on D0, and the clock on STROBE.
	 * LCD reads D0 on STROBE's rising edge.
	 */
	for (bit = 0; bit < 8; bit++) {
		FUNC0(LCD_BIT_CL, bits);	/* CLK low */
		FUNC1();
		if (byte & 1) {
			FUNC2(LCD_BIT_DA, bits);
		} else {
			FUNC0(LCD_BIT_DA, bits);
		}

		FUNC1();
		FUNC3(2);  /* maintain the data during 2 us before CLK up */
		FUNC2(LCD_BIT_CL, bits);	/* CLK high */
		FUNC1();
		FUNC3(1);  /* maintain the strobe during 1 us */
		byte >>= 1;
	}
}
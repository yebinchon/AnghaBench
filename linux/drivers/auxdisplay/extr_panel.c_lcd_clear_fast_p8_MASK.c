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
struct charlcd {int height; int hwidth; } ;

/* Variables and functions */
 int /*<<< orphan*/  LCD_BIT_E ; 
 int /*<<< orphan*/  LCD_BIT_RS ; 
 int /*<<< orphan*/  LCD_BIT_RW ; 
 int /*<<< orphan*/  bits ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pprt ; 
 int /*<<< orphan*/  pprt_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char) ; 

__attribute__((used)) static void FUNC7(struct charlcd *charlcd)
{
	int pos;

	FUNC3(&pprt_lock);
	for (pos = 0; pos < charlcd->height * charlcd->hwidth; pos++) {
		/* present the data to the data port */
		FUNC6(pprt, ' ');

		/* maintain the data during 20 us before the strobe */
		FUNC5(20);

		FUNC1(LCD_BIT_E, bits);
		FUNC1(LCD_BIT_RS, bits);
		FUNC0(LCD_BIT_RW, bits);
		FUNC2();

		/* maintain the strobe during 40 us */
		FUNC5(40);

		FUNC0(LCD_BIT_E, bits);
		FUNC2();

		/* the shortest data takes at least 45 us */
		FUNC5(45);
	}
	FUNC4(&pprt_lock);
}
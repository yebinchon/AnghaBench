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
struct charlcd {int dummy; } ;

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
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC7(struct charlcd *charlcd, int cmd)
{
	FUNC3(&pprt_lock);
	/* present the data to the data port */
	FUNC6(pprt, cmd);
	FUNC5(20);	/* maintain the data during 20 us before the strobe */

	FUNC1(LCD_BIT_E, bits);
	FUNC0(LCD_BIT_RS, bits);
	FUNC0(LCD_BIT_RW, bits);
	FUNC2();

	FUNC5(40);	/* maintain the strobe during 40 us */

	FUNC0(LCD_BIT_E, bits);
	FUNC2();

	FUNC5(120);	/* the shortest command takes at least 120 us */
	FUNC4(&pprt_lock);
}
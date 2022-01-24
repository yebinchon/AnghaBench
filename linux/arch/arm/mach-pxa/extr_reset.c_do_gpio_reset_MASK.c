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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int reset_gpio ; 

__attribute__((used)) static void FUNC6(void)
{
	FUNC0(reset_gpio == -1);

	/* drive it low */
	FUNC3(reset_gpio, 0);
	FUNC5(2);
	/* rising edge or drive high */
	FUNC4(reset_gpio, 1);
	FUNC5(2);
	/* falling edge */
	FUNC4(reset_gpio, 0);

	/* give it some time */
	FUNC5(10);

	FUNC1(1);
	/* fallback */
	FUNC2();
}
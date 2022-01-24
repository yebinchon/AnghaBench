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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct plat_lcd_data *pd,
				   unsigned int power)
{
	if (power) {
		FUNC2(FUNC0(13), 1);

		/* fire nRESET on power up */
		FUNC2(FUNC1(5), 0);
		FUNC3(10);
		FUNC2(FUNC1(5), 1);
		FUNC3(1);
	} else {
		FUNC2(FUNC0(13), 0);
	}
}
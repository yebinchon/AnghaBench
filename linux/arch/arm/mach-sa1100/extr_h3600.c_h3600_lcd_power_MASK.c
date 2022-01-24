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
 int /*<<< orphan*/  H3600_EGPIO_LCD_5V_ON ; 
 int /*<<< orphan*/  H3600_EGPIO_LCD_PCI ; 
 int /*<<< orphan*/  H3600_EGPIO_LVDD_ON ; 
 int /*<<< orphan*/  H3XXX_EGPIO_LCD_ON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static void FUNC2(int enable)
{
	if (!FUNC1())
		return;

	FUNC0(H3XXX_EGPIO_LCD_ON, enable);
	FUNC0(H3600_EGPIO_LCD_PCI, enable);
	FUNC0(H3600_EGPIO_LCD_5V_ON, enable);
	FUNC0(H3600_EGPIO_LVDD_ON, enable);
}
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
struct fb_var_screeninfo {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EGPIO_MAGICIAN_LCD_POWER ; 
 int /*<<< orphan*/  GPIO104_MAGICIAN_LCD_VOFF_EN ; 
 int /*<<< orphan*/  GPIO105_MAGICIAN_LCD_VON_EN ; 
 int /*<<< orphan*/  GPIO106_MAGICIAN_LCD_DCDC_NRESET ; 
 int /*<<< orphan*/  GPIO75_MAGICIAN_SAMSUNG_POWER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int system_rev ; 

__attribute__((used)) static void FUNC3(int on, struct fb_var_screeninfo *si)
{
	FUNC2("Samsung LCD power: %s\n", on ? "on" : "off");

	if (on) {
		if (system_rev < 3)
			FUNC0(GPIO75_MAGICIAN_SAMSUNG_POWER, 1);
		else
			FUNC0(EGPIO_MAGICIAN_LCD_POWER, 1);
		FUNC1(6);
		FUNC0(GPIO106_MAGICIAN_LCD_DCDC_NRESET, 1);
		FUNC1(6);	/* Avdd -> Voff >5ms */
		FUNC0(GPIO104_MAGICIAN_LCD_VOFF_EN, 1);
		FUNC1(16);	/* Voff -> Von >(5+10)ms */
		FUNC0(GPIO105_MAGICIAN_LCD_VON_EN, 1);
	} else {
		FUNC0(GPIO105_MAGICIAN_LCD_VON_EN, 0);
		FUNC1(16);
		FUNC0(GPIO104_MAGICIAN_LCD_VOFF_EN, 0);
		FUNC1(6);
		FUNC0(GPIO106_MAGICIAN_LCD_DCDC_NRESET, 0);
		FUNC1(6);
		if (system_rev < 3)
			FUNC0(GPIO75_MAGICIAN_SAMSUNG_POWER, 0);
		else
			FUNC0(EGPIO_MAGICIAN_LCD_POWER, 0);
	}
}
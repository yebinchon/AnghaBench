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
 int /*<<< orphan*/  EGPIO_MAGICIAN_TOPPOLY_POWER ; 
 int /*<<< orphan*/  GPIO104_MAGICIAN_LCD_VOFF_EN ; 
 int /*<<< orphan*/  GPIO105_MAGICIAN_LCD_VON_EN ; 
 int /*<<< orphan*/  GPIO106_MAGICIAN_LCD_DCDC_NRESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(int on, struct fb_var_screeninfo *si)
{
	FUNC2("Toppoly LCD power: %s\n", on ? "on" : "off");

	if (on) {
		FUNC0(EGPIO_MAGICIAN_TOPPOLY_POWER, 1);
		FUNC0(GPIO106_MAGICIAN_LCD_DCDC_NRESET, 1);
		FUNC3(2000);
		FUNC0(EGPIO_MAGICIAN_LCD_POWER, 1);
		FUNC3(2000);
		/* FIXME: enable LCDC here */
		FUNC3(2000);
		FUNC0(GPIO104_MAGICIAN_LCD_VOFF_EN, 1);
		FUNC3(2000);
		FUNC0(GPIO105_MAGICIAN_LCD_VON_EN, 1);
	} else {
		FUNC1(15);
		FUNC0(GPIO105_MAGICIAN_LCD_VON_EN, 0);
		FUNC3(500);
		FUNC0(GPIO104_MAGICIAN_LCD_VOFF_EN, 0);
		FUNC3(1000);
		FUNC0(GPIO106_MAGICIAN_LCD_DCDC_NRESET, 0);
		FUNC0(EGPIO_MAGICIAN_LCD_POWER, 0);
	}
}
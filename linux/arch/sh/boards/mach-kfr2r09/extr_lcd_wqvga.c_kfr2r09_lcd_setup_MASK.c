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
struct sh_mobile_lcdc_sys_bus_ops {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  GPIO_PTE4 ; 
 int /*<<< orphan*/  GPIO_PTF4 ; 
 int /*<<< orphan*/  FUNC0 (void*,struct sh_mobile_lcdc_sys_bus_ops*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (void*,struct sh_mobile_lcdc_sys_bus_ops*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

int FUNC6(void *sohandle, struct sh_mobile_lcdc_sys_bus_ops *so)
{
	/* power on */
	FUNC1(GPIO_PTF4, 0);  /* PROTECT/ -> L */
	FUNC1(GPIO_PTE4, 0);  /* LCD_RST/ -> L */
	FUNC1(GPIO_PTF4, 1);  /* PROTECT/ -> H */
	FUNC5(1100);
	FUNC1(GPIO_PTE4, 1);  /* LCD_RST/ -> H */
	FUNC5(10);
	FUNC1(GPIO_PTF4, 0);  /* PROTECT/ -> L */
	FUNC2(20);

	if (FUNC4(sohandle, so) != 0x01221517)
		return -ENODEV;

	FUNC3("KFR2R09 WQVGA LCD Module detected.\n");

	FUNC0(sohandle, so);
	return 0;
}
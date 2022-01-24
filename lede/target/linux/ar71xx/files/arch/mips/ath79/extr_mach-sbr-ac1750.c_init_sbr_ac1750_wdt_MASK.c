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
 int /*<<< orphan*/  GPIOF_OUT_INIT_HIGH ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  gpio_wdt_timer ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  (*) (int),int) ; 

__attribute__((used)) static void FUNC5(int gpio_wdt){
	
	if (gpio_wdt >= 0) {
		FUNC0(gpio_wdt, GPIOF_OUT_INIT_HIGH, "watchdog");
		FUNC1(gpio_wdt, 0);
		FUNC3(1000);
		FUNC1(gpio_wdt, 1);
		FUNC4(&gpio_wdt_timer, gpio_wdt_toggle, gpio_wdt);
		FUNC2(gpio_wdt);
	}
}
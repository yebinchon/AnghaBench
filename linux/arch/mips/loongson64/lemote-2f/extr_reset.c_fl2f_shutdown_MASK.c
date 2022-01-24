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
typedef  int u32 ;

/* Variables and functions */
 int /*<<< orphan*/  DIVIL_LBAR_GPIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ GPIOL_OUT_EN ; 
 scalar_t__ GPIOL_OUT_VAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*,int*) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC5(void)
{
	u32 hi, lo, val;
	int gpio_base;

	/* get gpio base */
	FUNC1(FUNC0(DIVIL_LBAR_GPIO), &hi, &lo);
	gpio_base = lo & 0xff00;

	/* make cs5536 gpio13 output enable */
	val = FUNC2(gpio_base + GPIOL_OUT_EN);
	val &= ~(1 << (16 + 13));
	val |= (1 << 13);
	FUNC4(val, gpio_base + GPIOL_OUT_EN);
	FUNC3();
	/* make cs5536 gpio13 output low level voltage. */
	val = FUNC2(gpio_base + GPIOL_OUT_VAL) & ~(1 << (13));
	val |= (1 << (16 + 13));
	FUNC4(val, gpio_base + GPIOL_OUT_VAL);
	FUNC3();
}
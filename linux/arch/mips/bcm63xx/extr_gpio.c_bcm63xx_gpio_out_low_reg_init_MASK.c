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
#define  BCM6345_CPU_ID 128 
 int /*<<< orphan*/  GPIO_DATA_LO_REG ; 
 int /*<<< orphan*/  GPIO_DATA_LO_REG_6345 ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  gpio_out_low_reg ; 

__attribute__((used)) static void FUNC1(void)
{
	switch (FUNC0()) {
	case BCM6345_CPU_ID:
		gpio_out_low_reg = GPIO_DATA_LO_REG_6345;
		break;
	default:
		gpio_out_low_reg = GPIO_DATA_LO_REG;
		break;
	}
}
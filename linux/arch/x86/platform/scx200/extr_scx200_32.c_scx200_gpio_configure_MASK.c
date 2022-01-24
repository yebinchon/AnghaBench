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
typedef  unsigned int u32 ;

/* Variables and functions */
 unsigned int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,scalar_t__) ; 
 scalar_t__ scx200_gpio_base ; 
 int /*<<< orphan*/  scx200_gpio_config_lock ; 

u32 FUNC4(unsigned index, u32 mask, u32 bits)
{
	u32 config, new_config;

	FUNC1(&scx200_gpio_config_lock);

	FUNC3(index, scx200_gpio_base + 0x20);
	config = FUNC0(scx200_gpio_base + 0x24);

	new_config = (config & mask) | bits;
	FUNC3(new_config, scx200_gpio_base + 0x24);

	FUNC2(&scx200_gpio_config_lock);

	return config;
}
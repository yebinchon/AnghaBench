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
 int /*<<< orphan*/  CONFIG_RANDOM_TRUST_BOOTLOADER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (void const*,unsigned int,unsigned int) ; 

void FUNC3(const void *buf, unsigned int size)
{
	if (FUNC0(CONFIG_RANDOM_TRUST_BOOTLOADER))
		FUNC2(buf, size, size * 8);
	else
		FUNC1(buf, size);
}
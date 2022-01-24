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
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 int /*<<< orphan*/  CPU_RESET_ASSERT ; 
 scalar_t__ FUNC0 (int) ; 
 int EINVAL ; 
 int ENODEV ; 
 scalar_t__ cpu_reset_base ; 
 scalar_t__ cpu_reset_size ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

int FUNC3(int cpu)
{
	u32 reg;

	if (!cpu_reset_base)
		return -ENODEV;

	if (FUNC0(cpu) >= cpu_reset_size)
		return -EINVAL;

	reg = FUNC1(cpu_reset_base + FUNC0(cpu));
	reg &= ~CPU_RESET_ASSERT;
	FUNC2(reg, cpu_reset_base + FUNC0(cpu));

	return 0;
}
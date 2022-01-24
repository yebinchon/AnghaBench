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
struct arch_hw_breakpoint {unsigned long address; int /*<<< orphan*/  len; } ;

/* Variables and functions */
 unsigned long TASK_SIZE ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 

int FUNC1(struct arch_hw_breakpoint *hw)
{
	unsigned int len;
	unsigned long va;

	va = hw->address;
	len = FUNC0(hw->len);

	return (va >= TASK_SIZE) && ((va + len - 1) >= TASK_SIZE);
}
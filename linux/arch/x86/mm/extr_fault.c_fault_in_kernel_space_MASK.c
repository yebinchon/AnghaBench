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
 int /*<<< orphan*/  CONFIG_X86_64 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long TASK_SIZE_MAX ; 
 scalar_t__ FUNC1 (unsigned long) ; 

__attribute__((used)) static int FUNC2(unsigned long address)
{
	/*
	 * On 64-bit systems, the vsyscall page is at an address above
	 * TASK_SIZE_MAX, but is not considered part of the kernel
	 * address space.
	 */
	if (FUNC0(CONFIG_X86_64) && FUNC1(address))
		return false;

	return address >= TASK_SIZE_MAX;
}
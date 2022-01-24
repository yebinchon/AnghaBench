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
typedef  scalar_t__ uint32_t ;
struct task_struct {int dummy; } ;
typedef  scalar_t__ phys_addr_t ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__*) ; 
 int /*<<< orphan*/  secondary_startup ; 

__attribute__((used)) static int FUNC4(unsigned int cpu, struct task_struct *idle)
{
	phys_addr_t addr;

	addr = FUNC0(secondary_startup);

	if (addr > (phys_addr_t)(uint32_t)(-1)) {
		FUNC3("FAIL: resume address over 32bit (%pa)", &addr);
		return -EINVAL;
	}

	return FUNC1(FUNC2(cpu), (uint32_t)addr);
}
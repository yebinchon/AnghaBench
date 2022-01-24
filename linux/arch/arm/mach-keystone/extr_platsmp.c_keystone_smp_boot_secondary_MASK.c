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
struct task_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  KEYSTONE_MON_CPU_UP_IDX ; 
 int FUNC0 (int /*<<< orphan*/ ,unsigned int,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int,int) ; 
 int /*<<< orphan*/  secondary_startup ; 
 unsigned long FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(unsigned int cpu,
						struct task_struct *idle)
{
	unsigned long start = FUNC3(&secondary_startup);
	int error;

	FUNC1("keystone-smp: booting cpu %d, vector %08lx\n",
		 cpu, start);

	error = FUNC0(KEYSTONE_MON_CPU_UP_IDX, cpu, start);
	if (error)
		FUNC2("CPU %d bringup failed with %d\n", cpu, error);

	return error;
}
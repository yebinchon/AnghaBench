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
 int EFAULT ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  cpu_ctrl ; 

__attribute__((used)) static int FUNC1(unsigned int cpu, struct task_struct *idle)
{
	if (!cpu_ctrl)
		return -EFAULT;

	/*
	 * Reset the CPU, making it to execute the instruction in the reset
	 * exception vector.
	 */
	FUNC0(cpu);

	return 0;
}
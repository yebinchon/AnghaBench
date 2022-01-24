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
 int EIO ; 
 unsigned int FUNC0 (unsigned int) ; 
 int FUNC1 (unsigned int) ; 

__attribute__((used)) static int FUNC2(unsigned int cpu, struct task_struct *idle)
{
	int ret = -EIO;

	cpu = FUNC0(cpu);
	if (cpu)
		ret = FUNC1(cpu);

	return ret;
}
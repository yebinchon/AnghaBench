#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct task_struct {int dummy; } ;
typedef  int /*<<< orphan*/  elf_fpregset_t ;
struct TYPE_2__ {int cpu; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/ * userspace_pid ; 

int FUNC2(struct task_struct *t, elf_fpregset_t *fpu)
{
	int cpu = FUNC0()->cpu;

	return FUNC1(userspace_pid[cpu], (unsigned long *) fpu);
}
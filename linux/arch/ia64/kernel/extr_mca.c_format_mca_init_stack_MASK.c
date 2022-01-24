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
struct thread_info {int preempt_count; int cpu; struct task_struct* task; int /*<<< orphan*/  flags; } ;
struct task_struct {int /*<<< orphan*/  comm; int /*<<< orphan*/  sibling; int /*<<< orphan*/  children; struct task_struct* group_leader; struct task_struct* real_parent; struct task_struct* parent; int /*<<< orphan*/  tasks; int /*<<< orphan*/  cpus_mask; int /*<<< orphan*/  state; struct thread_info* stack; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KERNEL_STACK_SIZE ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  _TIF_MCA_INIT ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,int) ; 
 struct thread_info* FUNC4 (struct task_struct*) ; 

__attribute__((used)) static void
FUNC5(void *mca_data, unsigned long offset,
		const char *type, int cpu)
{
	struct task_struct *p = (struct task_struct *)((char *)mca_data + offset);
	struct thread_info *ti;
	FUNC2(p, 0, KERNEL_STACK_SIZE);
	ti = FUNC4(p);
	ti->flags = _TIF_MCA_INIT;
	ti->preempt_count = 1;
	ti->task = p;
	ti->cpu = cpu;
	p->stack = ti;
	p->state = TASK_UNINTERRUPTIBLE;
	FUNC1(cpu, &p->cpus_mask);
	FUNC0(&p->tasks);
	p->parent = p->real_parent = p->group_leader = p;
	FUNC0(&p->children);
	FUNC0(&p->sibling);
	FUNC3(p->comm, type, sizeof(p->comm)-1);
}
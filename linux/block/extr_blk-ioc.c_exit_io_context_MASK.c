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
struct task_struct {struct io_context* io_context; } ;
struct io_context {int /*<<< orphan*/  nr_tasks; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct io_context*) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*) ; 

void FUNC4(struct task_struct *task)
{
	struct io_context *ioc;

	FUNC2(task);
	ioc = task->io_context;
	task->io_context = NULL;
	FUNC3(task);

	FUNC0(&ioc->nr_tasks);
	FUNC1(ioc);
}
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
struct task_struct {int flags; struct io_context* io_context; } ;
struct io_context {int /*<<< orphan*/  release_work; int /*<<< orphan*/  icq_list; int /*<<< orphan*/  icq_tree; int /*<<< orphan*/  lock; int /*<<< orphan*/  active_ref; int /*<<< orphan*/  nr_tasks; int /*<<< orphan*/  refcount; } ;
typedef  int gfp_t ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int PF_EXITING ; 
 int __GFP_ZERO ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 struct task_struct* current ; 
 int /*<<< orphan*/  ioc_release_fn ; 
 int /*<<< orphan*/  iocontext_cachep ; 
 struct io_context* FUNC5 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct io_context*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC9 (struct task_struct*) ; 
 scalar_t__ FUNC10 (int) ; 

int FUNC11(struct task_struct *task, gfp_t gfp_flags, int node)
{
	struct io_context *ioc;
	int ret;

	ioc = FUNC5(iocontext_cachep, gfp_flags | __GFP_ZERO,
				    node);
	if (FUNC10(!ioc))
		return -ENOMEM;

	/* initialize */
	FUNC3(&ioc->refcount, 1);
	FUNC4(&ioc->nr_tasks, 1);
	FUNC4(&ioc->active_ref, 1);
	FUNC7(&ioc->lock);
	FUNC1(&ioc->icq_tree, GFP_ATOMIC);
	FUNC0(&ioc->icq_list);
	FUNC2(&ioc->release_work, ioc_release_fn);

	/*
	 * Try to install.  ioc shouldn't be installed if someone else
	 * already did or @task, which isn't %current, is exiting.  Note
	 * that we need to allow ioc creation on exiting %current as exit
	 * path may issue IOs from e.g. exit_files().  The exit path is
	 * responsible for not issuing IO after exit_io_context().
	 */
	FUNC8(task);
	if (!task->io_context &&
	    (task == current || !(task->flags & PF_EXITING)))
		task->io_context = ioc;
	else
		FUNC6(iocontext_cachep, ioc);

	ret = task->io_context ? 0 : -EBUSY;

	FUNC9(task);

	return ret;
}
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
struct io_context {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct task_struct*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct io_context*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct io_context*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC6 (struct task_struct*) ; 

struct io_context *FUNC7(struct task_struct *task,
				       gfp_t gfp_flags, int node)
{
	struct io_context *ioc;

	FUNC4(FUNC2(gfp_flags));

	do {
		FUNC5(task);
		ioc = task->io_context;
		if (FUNC3(ioc)) {
			FUNC1(ioc);
			FUNC6(task);
			return ioc;
		}
		FUNC6(task);
	} while (!FUNC0(task, gfp_flags, node));

	return NULL;
}
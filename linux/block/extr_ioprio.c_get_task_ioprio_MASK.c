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
struct task_struct {TYPE_1__* io_context; } ;
struct TYPE_2__ {int ioprio; } ;

/* Variables and functions */
 int /*<<< orphan*/  IOPRIO_CLASS_NONE ; 
 int /*<<< orphan*/  IOPRIO_NORM ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*) ; 

__attribute__((used)) static int FUNC4(struct task_struct *p)
{
	int ret;

	ret = FUNC1(p);
	if (ret)
		goto out;
	ret = FUNC0(IOPRIO_CLASS_NONE, IOPRIO_NORM);
	FUNC2(p);
	if (p->io_context)
		ret = p->io_context->ioprio;
	FUNC3(p);
out:
	return ret;
}
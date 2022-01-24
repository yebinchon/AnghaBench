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
struct TYPE_2__ {int t; scalar_t__ l; scalar_t__ h; scalar_t__ r; } ;

/* Variables and functions */
 int /*<<< orphan*/  TIF_BLOCKSTEP ; 
 int /*<<< orphan*/  TIF_SINGLESTEP ; 
 int /*<<< orphan*/  FUNC0 (struct task_struct*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*,int /*<<< orphan*/ ) ; 

void FUNC3(struct task_struct *task)
{
	FUNC0(task, TIF_SINGLESTEP);
	FUNC2(task, TIF_BLOCKSTEP);

	/* Enable taken branch trap. */
	FUNC1(task)->r = 0;
	FUNC1(task)->t = 1;
	FUNC1(task)->h = 0;
	FUNC1(task)->l = 0;
}
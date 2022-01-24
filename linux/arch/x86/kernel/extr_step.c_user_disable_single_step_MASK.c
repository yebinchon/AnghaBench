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
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  TIF_BLOCKSTEP ; 
 int /*<<< orphan*/  TIF_FORCED_TF ; 
 int /*<<< orphan*/  TIF_SINGLESTEP ; 
 int /*<<< orphan*/  X86_EFLAGS_TF ; 
 int /*<<< orphan*/  FUNC0 (struct task_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*,int) ; 
 TYPE_1__* FUNC2 (struct task_struct*) ; 
 scalar_t__ FUNC3 (struct task_struct*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct task_struct*,int /*<<< orphan*/ ) ; 

void FUNC5(struct task_struct *child)
{
	/*
	 * Make sure block stepping (BTF) is disabled.
	 */
	if (FUNC4(child, TIF_BLOCKSTEP))
		FUNC1(child, false);

	/* Always clear TIF_SINGLESTEP... */
	FUNC0(child, TIF_SINGLESTEP);

	/* But touch TF only if it was set by us.. */
	if (FUNC3(child, TIF_FORCED_TF))
		FUNC2(child)->flags &= ~X86_EFLAGS_TF;
}
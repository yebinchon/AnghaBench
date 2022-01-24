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
struct thread_struct {int /*<<< orphan*/ ** ptrace_bps; } ;
struct task_struct {struct thread_struct thread; } ;
struct TYPE_2__ {int num_events; } ;

/* Variables and functions */
 TYPE_1__* sh_ubc ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

void FUNC1(struct task_struct *tsk)
{
	int i;
	struct thread_struct *t = &tsk->thread;

	for (i = 0; i < sh_ubc->num_events; i++) {
		FUNC0(t->ptrace_bps[i]);
		t->ptrace_bps[i] = NULL;
	}
}
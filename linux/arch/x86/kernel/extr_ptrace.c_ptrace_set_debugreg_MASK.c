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
struct thread_struct {unsigned long debugreg6; unsigned long ptrace_dr7; } ;
struct task_struct {struct thread_struct thread; } ;

/* Variables and functions */
 int EIO ; 
 int HBP_NUM ; 
 int FUNC0 (struct task_struct*,int,unsigned long) ; 
 int FUNC1 (struct task_struct*,unsigned long) ; 

__attribute__((used)) static int FUNC2(struct task_struct *tsk, int n,
			       unsigned long val)
{
	struct thread_struct *thread = &tsk->thread;
	/* There are no DR4 or DR5 registers */
	int rc = -EIO;

	if (n < HBP_NUM) {
		rc = FUNC0(tsk, n, val);
	} else if (n == 6) {
		thread->debugreg6 = val;
		rc = 0;
	} else if (n == 7) {
		rc = FUNC1(tsk, val);
		if (!rc)
			thread->ptrace_dr7 = val;
	}
	return rc;
}
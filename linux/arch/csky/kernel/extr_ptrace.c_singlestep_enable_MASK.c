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
struct task_struct {int dummy; } ;
struct pt_regs {int sr; } ;

/* Variables and functions */
 int TRACE_MODE_MASK ; 
 int TRACE_MODE_SI ; 
 struct pt_regs* FUNC0 (struct task_struct*) ; 

__attribute__((used)) static void FUNC1(struct task_struct *tsk)
{
	struct pt_regs *regs;

	regs = FUNC0(tsk);
	regs->sr = (regs->sr & TRACE_MODE_MASK) | TRACE_MODE_SI;
}
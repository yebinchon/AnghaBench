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
struct pt_regs {unsigned long* gr; unsigned long* iaoq; unsigned long ksp; unsigned long kpc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long*,struct pt_regs*) ; 
 struct pt_regs* FUNC1 (struct task_struct*) ; 

void FUNC2(unsigned long *gdb_regs,
				struct task_struct *task)
{
	struct pt_regs *regs = FUNC1(task);
	unsigned long gr30, iaoq;

	gr30 = regs->gr[30];
	iaoq = regs->iaoq[0];

	regs->gr[30] = regs->ksp;
	regs->iaoq[0] = regs->kpc;
	FUNC0(gdb_regs, regs);

	regs->gr[30] = gr30;
	regs->iaoq[0] = iaoq;

}
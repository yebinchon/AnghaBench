#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct uml_pt_regs {int dummy; } ;
struct siginfo {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/ * fault_catcher; } ;
struct TYPE_4__ {TYPE_1__ thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC1 (int,struct siginfo*,struct uml_pt_regs*) ; 

void FUNC2(int sig, struct siginfo *si, struct uml_pt_regs *regs)
{
	if (current->thread.fault_catcher != NULL)
		FUNC0(current->thread.fault_catcher, 1);
	else
		FUNC1(sig, si, regs);
}
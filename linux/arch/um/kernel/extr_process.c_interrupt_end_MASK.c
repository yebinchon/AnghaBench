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
struct pt_regs {int dummy; } ;
struct TYPE_3__ {struct pt_regs regs; } ;
struct TYPE_4__ {TYPE_1__ thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  TIF_NOTIFY_RESUME ; 
 int /*<<< orphan*/  TIF_SIGPENDING ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC0 (struct pt_regs*) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pt_regs*) ; 

void FUNC6(void)
{
	struct pt_regs *regs = &current->thread.regs;

	if (FUNC1())
		FUNC2();
	if (FUNC4(TIF_SIGPENDING))
		FUNC0(regs);
	if (FUNC3(TIF_NOTIFY_RESUME))
		FUNC5(regs);
}
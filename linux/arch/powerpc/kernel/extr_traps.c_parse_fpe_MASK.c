#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct pt_regs {int /*<<< orphan*/  nip; } ;
struct TYPE_5__ {int /*<<< orphan*/  fpscr; } ;
struct TYPE_6__ {TYPE_1__ fp_state; } ;
struct TYPE_7__ {TYPE_2__ thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIGFPE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct pt_regs*,int,int /*<<< orphan*/ ) ; 
 TYPE_3__* current ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC3(struct pt_regs *regs)
{
	int code = 0;

	FUNC2(current);

	code = FUNC0(current->thread.fp_state.fpscr);

	FUNC1(SIGFPE, regs, code, regs->nip);
}
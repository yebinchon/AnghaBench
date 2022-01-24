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
struct pt_regs {int dummy; } ;
struct ksignal {int dummy; } ;
typedef  int /*<<< orphan*/  sigset_t ;

/* Variables and functions */
 int FUNC0 (struct ksignal*,int /*<<< orphan*/ *,struct pt_regs*) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,struct ksignal*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct ksignal *ksig, struct pt_regs *regs)
{
	int ret;
	sigset_t *oldset = FUNC1();

	/* set up the stack frame */
	ret = FUNC0(ksig, oldset, regs);

	FUNC2(ret, ksig, 0);
}
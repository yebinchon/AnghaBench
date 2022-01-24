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
struct fpu {int dummy; } ;
struct TYPE_3__ {struct fpu fpu; } ;
struct TYPE_4__ {TYPE_1__ thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  X86_FEATURE_FPU ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC2 (struct fpu*) ; 
 int /*<<< orphan*/  FUNC3 (struct fpu*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(struct fpu *fpu)
{
	FUNC0(fpu != &current->thread.fpu); /* Almost certainly an anomaly */

	FUNC2(fpu);

	/*
	 * Make sure fpstate is cleared and initialized.
	 */
	FUNC3(fpu);
	if (FUNC4(X86_FEATURE_FPU))
		FUNC1();
}
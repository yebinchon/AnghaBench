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
struct fpu {int /*<<< orphan*/  state; } ;
struct TYPE_3__ {struct fpu fpu; } ;
struct TYPE_4__ {TYPE_1__ thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  TIF_NEED_FPU_LOAD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct fpu*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct fpu*) ; 
 int /*<<< orphan*/  FUNC7 (struct fpu*) ; 

void FUNC8(struct fpu *fpu)
{
	FUNC0(fpu != &current->thread.fpu);

	FUNC3();
	FUNC7(fpu);

	if (!FUNC5(TIF_NEED_FPU_LOAD)) {
		if (!FUNC1(fpu)) {
			FUNC2(&fpu->state);
		}
	}

	FUNC6(fpu);
	FUNC4();
}
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
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct fpu*) ; 

__attribute__((used)) static void FUNC4(struct fpu *fpu)
{
	FUNC0(fpu != &current->thread.fpu);

	FUNC2(TIF_NEED_FPU_LOAD);
	FUNC1(&fpu->state);
	FUNC3(fpu);
}
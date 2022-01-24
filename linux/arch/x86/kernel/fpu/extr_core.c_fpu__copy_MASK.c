#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  xsave; } ;
struct fpu {int last_cpu; TYPE_3__ state; } ;
struct TYPE_7__ {struct fpu fpu; } ;
struct task_struct {TYPE_1__ thread; } ;
struct TYPE_8__ {struct fpu fpu; } ;
struct TYPE_10__ {TYPE_2__ thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  TIF_NEED_FPU_LOAD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  X86_FEATURE_FPU ; 
 int /*<<< orphan*/  FUNC1 (struct fpu*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 TYPE_5__* current ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  fpu_kernel_xstate_size ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct task_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct fpu*) ; 
 int /*<<< orphan*/  FUNC11 (struct fpu*) ; 

int FUNC12(struct task_struct *dst, struct task_struct *src)
{
	struct fpu *dst_fpu = &dst->thread.fpu;
	struct fpu *src_fpu = &src->thread.fpu;

	dst_fpu->last_cpu = -1;

	if (!FUNC8(X86_FEATURE_FPU))
		return 0;

	FUNC0(src_fpu != &current->thread.fpu);

	/*
	 * Don't let 'init optimized' areas of the XSAVE area
	 * leak into the child task:
	 */
	FUNC6(&dst_fpu->state.xsave, 0, fpu_kernel_xstate_size);

	/*
	 * If the FPU registers are not current just memcpy() the state.
	 * Otherwise save current FPU registers directly into the child's FPU
	 * context, without any memory-to-memory copying.
	 *
	 * ( The function 'fails' in the FNSAVE case, which destroys
	 *   register contents so we have to load them back. )
	 */
	FUNC3();
	if (FUNC9(TIF_NEED_FPU_LOAD))
		FUNC5(&dst_fpu->state, &src_fpu->state, fpu_kernel_xstate_size);

	else if (!FUNC1(dst_fpu))
		FUNC2(&dst_fpu->state);

	FUNC4();

	FUNC7(dst, TIF_NEED_FPU_LOAD);

	FUNC11(src_fpu);
	FUNC10(dst_fpu);

	return 0;
}
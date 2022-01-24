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
union fpregs_state {int /*<<< orphan*/  fsave; int /*<<< orphan*/  fxsave; int /*<<< orphan*/  xsave; int /*<<< orphan*/  soft; } ;

/* Variables and functions */
 int /*<<< orphan*/  X86_FEATURE_FPU ; 
 int /*<<< orphan*/  X86_FEATURE_FXSR ; 
 int /*<<< orphan*/  X86_FEATURE_XSAVES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fpu_kernel_xstate_size ; 
 int /*<<< orphan*/  FUNC4 (union fpregs_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(union fpregs_state *state)
{
	if (!FUNC5(X86_FEATURE_FPU)) {
		FUNC2(&state->soft);
		return;
	}

	FUNC4(state, 0, fpu_kernel_xstate_size);

	if (FUNC5(X86_FEATURE_XSAVES))
		FUNC3(&state->xsave);
	if (FUNC5(X86_FEATURE_FXSR))
		FUNC1(&state->fxsave);
	else
		FUNC0(&state->fsave);
}
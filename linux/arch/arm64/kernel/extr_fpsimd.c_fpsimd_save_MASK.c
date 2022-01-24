#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct fpsimd_last_state_struct {scalar_t__ sve_vl; TYPE_1__* st; scalar_t__ sve_state; } ;
struct TYPE_2__ {int /*<<< orphan*/  fpsr; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIGKILL ; 
 int /*<<< orphan*/  SI_KERNEL ; 
 int /*<<< orphan*/  TIF_FOREIGN_FPSTATE ; 
 int /*<<< orphan*/  TIF_SVE ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fpsimd_last_state ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 () ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 struct fpsimd_last_state_struct* FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(void)
{
	struct fpsimd_last_state_struct const *last =
		FUNC9(&fpsimd_last_state);
	/* set by fpsimd_bind_task_to_cpu() or fpsimd_bind_state_to_cpu() */

	FUNC0(!FUNC3());

	if (!FUNC8(TIF_FOREIGN_FPSTATE)) {
		if (FUNC7() && FUNC8(TIF_SVE)) {
			if (FUNC0(FUNC5() != last->sve_vl)) {
				/*
				 * Can't save the user regs, so current would
				 * re-enter user with corrupt state.
				 * There's no way to recover, so kill it:
				 */
				FUNC1(SIGKILL, SI_KERNEL, 0);
				return;
			}

			FUNC6((char *)last->sve_state +
						FUNC4(last->sve_vl),
				       &last->st->fpsr);
		} else
			FUNC2(last->st);
	}
}
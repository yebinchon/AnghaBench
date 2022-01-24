#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  fpsr; } ;
struct TYPE_5__ {TYPE_3__ fpsimd_state; } ;
struct TYPE_6__ {TYPE_1__ uw; int /*<<< orphan*/  sve_vl; } ;
struct TYPE_8__ {TYPE_2__ thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  TIF_SVE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_4__* current ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 () ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(void)
{
	FUNC0(!FUNC2());

	if (FUNC6() && FUNC7(TIF_SVE))
		FUNC3(FUNC4(&current->thread),
			       &current->thread.uw.fpsimd_state.fpsr,
			       FUNC5(current->thread.sve_vl) - 1);
	else
		FUNC1(&current->thread.uw.fpsimd_state);
}
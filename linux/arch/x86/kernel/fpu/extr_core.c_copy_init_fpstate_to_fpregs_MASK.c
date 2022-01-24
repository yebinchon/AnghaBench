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
struct TYPE_2__ {int /*<<< orphan*/  fsave; int /*<<< orphan*/  fxsave; int /*<<< orphan*/  xsave; } ;

/* Variables and functions */
 int /*<<< orphan*/  X86_FEATURE_FXSR ; 
 int /*<<< orphan*/  X86_FEATURE_OSPKE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 TYPE_1__ init_fpstate ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 () ; 

__attribute__((used)) static inline void FUNC10(void)
{
	FUNC5();

	if (FUNC9())
		FUNC4(&init_fpstate.xsave, -1);
	else if (FUNC8(X86_FEATURE_FXSR))
		FUNC3(&init_fpstate.fxsave);
	else
		FUNC2(&init_fpstate.fsave);

	if (FUNC0(X86_FEATURE_OSPKE))
		FUNC1();

	FUNC6();
	FUNC7();
}
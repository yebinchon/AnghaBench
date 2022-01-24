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
struct TYPE_2__ {int /*<<< orphan*/  trampoline; int /*<<< orphan*/  last_report; int /*<<< orphan*/  trampoline_enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CL_TRACE__TEST__LONGJMP ; 
 TYPE_1__ _clar ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(void)
{
	if (!_clar.trampoline_enabled) {
		FUNC1(
				"Fatal error: a cleanup method raised an exception.");
		FUNC2(_clar.last_report);
		FUNC3(-1);
	}

	FUNC0(CL_TRACE__TEST__LONGJMP);
	FUNC4(_clar.trampoline, -1);
}
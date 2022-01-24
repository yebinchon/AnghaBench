#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  words; int /*<<< orphan*/  flags; int /*<<< orphan*/  fns; } ;
typedef  TYPE_1__ git_diff_driver_definition ;

/* Variables and functions */
 size_t FUNC0 (TYPE_1__*) ; 
 TYPE_1__* builtin_defs ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  regex ; 

void FUNC4(void)
{
	size_t idx;

	for (idx = 0; idx < FUNC0(builtin_defs); ++idx) {
		git_diff_driver_definition ddef = builtin_defs[idx];

		FUNC1(FUNC2(&regex, ddef.fns, ddef.flags));
		FUNC3(&regex);

		FUNC1(FUNC2(&regex, ddef.words, 0));
		FUNC3(&regex);
	}
}
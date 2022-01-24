#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  drivers; } ;
typedef  TYPE_1__ git_diff_driver_registry ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

git_diff_driver_registry *FUNC3(void)
{
	git_diff_driver_registry *reg =
		FUNC0(1, sizeof(git_diff_driver_registry));
	if (!reg)
		return NULL;

	if (FUNC2(&reg->drivers) < 0) {
		FUNC1(reg);
		return NULL;
	}

	return reg;
}
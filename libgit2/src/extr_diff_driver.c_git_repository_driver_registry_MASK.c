#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * diff_drivers; } ;
typedef  TYPE_1__ git_repository ;
typedef  int /*<<< orphan*/  git_diff_driver_registry ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ERROR_REPOSITORY ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static git_diff_driver_registry *FUNC4(
	git_repository *repo)
{
	if (!repo->diff_drivers) {
		git_diff_driver_registry *reg = FUNC2();
		reg = FUNC0(&repo->diff_drivers, NULL, reg);

		if (reg != NULL) /* if we race, free losing allocation */
			FUNC1(reg);
	}

	if (!repo->diff_drivers)
		FUNC3(GIT_ERROR_REPOSITORY, "unable to create diff driver registry");

	return repo->diff_drivers;
}
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

/* Variables and functions */
 int /*<<< orphan*/ * _repo ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  cleanup_repository ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,char*,int) ; 

void FUNC8(void)
{
	int expected = FUNC2(), current_value;

	/* Init a new repo */
	FUNC5(&cleanup_repository, "overwrite.git");
	FUNC1(FUNC7(&_repo, "overwrite.git", 1));

	/* Change the "core.filemode" config value to something unlikely */
	FUNC4(_repo, "core.filemode", !expected);

	FUNC6(_repo);
	_repo = NULL;

	/* Reinit the repository */
	FUNC1(FUNC7(&_repo, "overwrite.git", 1));

	/* Ensure the "core.filemode" config value has been reset */
	current_value = FUNC3(_repo, "core.filemode");
	FUNC0(expected, current_value);
}
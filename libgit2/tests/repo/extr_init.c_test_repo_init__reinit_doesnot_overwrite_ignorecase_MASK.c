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
typedef  int /*<<< orphan*/  git_config ;

/* Variables and functions */
 int /*<<< orphan*/ * _repo ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  cleanup_repository ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,char*,int) ; 

void FUNC9(void)
{
	git_config *config;
	int current_value;

	/* Init a new repo */
	FUNC2(&cleanup_repository, "not.overwrite.git");
	FUNC1(FUNC8(&_repo, "not.overwrite.git", 1));

	/* Change the "core.ignorecase" config value to something unlikely */
	FUNC6(&config, _repo);
	FUNC5(config, "core.ignorecase", 42);
	FUNC3(config);
	FUNC7(_repo);
	_repo = NULL;

	/* Reinit the repository */
	FUNC1(FUNC8(&_repo, "not.overwrite.git", 1));
	FUNC6(&config, _repo);

	/* Ensure the "core.ignorecase" config value hasn't been updated */
	FUNC1(FUNC4(&current_value, config, "core.ignorecase"));
	FUNC0(42, current_value);

	FUNC3(config);
}
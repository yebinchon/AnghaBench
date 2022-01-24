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
 int /*<<< orphan*/  _repo ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  cleanup_repository ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int*,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*,int) ; 

__attribute__((used)) static void FUNC7(
	const char *config_key, int expected_value, bool is_bare)
{
	git_config *config;
	int error, current_value;
	const char *repo_path = is_bare ?
		"config_entry/test.bare.git" : "config_entry/test.non.bare.git";

	FUNC2(&cleanup_repository, "config_entry");

	FUNC1(FUNC6(&_repo, repo_path, is_bare));

	FUNC1(FUNC5(&config, _repo));
	error = FUNC4(&current_value, config, config_key);
	FUNC3(config);

	if (expected_value >= 0) {
		FUNC0(0, error);
		FUNC0(expected_value, current_value);
	} else {
		FUNC0(expected_value, error);
	}
}
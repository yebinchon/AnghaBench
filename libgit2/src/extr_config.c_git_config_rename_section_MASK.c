#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct rename_data {scalar_t__ old_len; TYPE_1__* name; int /*<<< orphan*/ * config; } ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_config ;
struct TYPE_8__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_ERROR_CONFIG ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*,char,char const*,char*) ; 
 int FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char const*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct rename_data*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char const*) ; 
 int FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rename_config_entries_cb ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char) ; 
 scalar_t__ FUNC10 (char const*) ; 

int FUNC11(
	git_repository *repo,
	const char *old_section_name,
	const char *new_section_name)
{
	git_config *config;
	git_buf pattern = GIT_BUF_INIT, replace = GIT_BUF_INIT;
	int error = 0;
	struct rename_data data;

	FUNC4(&pattern, old_section_name);

	if ((error = FUNC3(&pattern, "\\..+")) < 0)
		goto cleanup;

	if ((error = FUNC7(&config, repo)) < 0)
		goto cleanup;

	data.config  = config;
	data.name    = &replace;
	data.old_len = FUNC10(old_section_name) + 1;

	if ((error = FUNC2(&replace, '.', new_section_name, "")) < 0)
		goto cleanup;

	if (new_section_name != NULL &&
	    (error = FUNC8(replace.ptr, FUNC9(replace.ptr, '.'))) < 0)
	{
		FUNC6(
			GIT_ERROR_CONFIG, "invalid config section '%s'", new_section_name);
		goto cleanup;
	}

	error = FUNC5(
		config, FUNC0(&pattern), rename_config_entries_cb, &data);

cleanup:
	FUNC1(&pattern);
	FUNC1(&replace);

	return error;
}
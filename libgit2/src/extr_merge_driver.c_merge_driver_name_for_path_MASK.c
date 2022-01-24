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
typedef  int /*<<< orphan*/  git_repository ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*) ; 
 int FUNC3 (char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,char*) ; 
 char* merge_driver_name__binary ; 
 char* merge_driver_name__text ; 

__attribute__((used)) static int FUNC4(
	const char **out,
	git_repository *repo,
	const char *path,
	const char *default_driver)
{
	const char *value;
	int error;

	*out = NULL;

	if ((error = FUNC3(&value, repo, 0, path, "merge")) < 0)
		return error;

	/* set: use the built-in 3-way merge driver ("text") */
	if (FUNC1(value))
		*out = merge_driver_name__text;

	/* unset: do not merge ("binary") */
	else if (FUNC0(value))
		*out = merge_driver_name__binary;

	else if (FUNC2(value) && default_driver)
		*out = default_driver;

	else if (FUNC2(value))
		*out = merge_driver_name__text;

	else
		*out = value;

	return 0;
}
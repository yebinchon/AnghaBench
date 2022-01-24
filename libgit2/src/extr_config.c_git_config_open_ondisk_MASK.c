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
 int /*<<< orphan*/  GIT_CONFIG_LEVEL_LOCAL ; 
 int FUNC0 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ **) ; 

int FUNC3(git_config **out, const char *path)
{
	int error;
	git_config *config;

	*out = NULL;

	if (FUNC2(&config) < 0)
		return -1;

	if ((error = FUNC0(config, path, GIT_CONFIG_LEVEL_LOCAL, NULL, 0)) < 0)
		FUNC1(config);
	else
		*out = config;

	return error;
}
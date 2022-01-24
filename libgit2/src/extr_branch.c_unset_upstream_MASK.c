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
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*,char const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(git_config *config, const char *shortname)
{
	git_buf buf = GIT_BUF_INIT;

	if (FUNC3(&buf, "branch.%s.remote", shortname) < 0)
		return -1;

	if (FUNC4(config, FUNC1(&buf)) < 0)
		goto on_error;

	FUNC0(&buf);
	if (FUNC3(&buf, "branch.%s.merge", shortname) < 0)
		goto on_error;

	if (FUNC4(config, FUNC1(&buf)) < 0)
		goto on_error;

	FUNC2(&buf);
	return 0;

on_error:
	FUNC2(&buf);
	return -1;
}
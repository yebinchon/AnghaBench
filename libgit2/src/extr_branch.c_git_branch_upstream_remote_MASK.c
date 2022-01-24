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
typedef  int /*<<< orphan*/  git_config ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int GIT_ENOTFOUND ; 
 int /*<<< orphan*/  GIT_ERROR_REFERENCE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int FUNC6 (char const*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,char*) ; 

int FUNC8(git_buf *buf, git_repository *repo, const char *refname)
{
	int error;
	git_config *cfg;

	if (!FUNC4(refname))
		return FUNC6(refname);

	if ((error = FUNC5(&cfg, repo)) < 0)
		return error;

	FUNC2(buf);

	if ((error = FUNC7(buf, cfg, refname, "branch.%s.remote")) < 0)
		return error;

	if (FUNC1(buf) == 0) {
		FUNC3(GIT_ERROR_REFERENCE, "branch '%s' does not have an upstream remote", refname);
		error = GIT_ENOTFOUND;
		FUNC0(buf);
	}

	return error;
}
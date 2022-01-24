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
typedef  int /*<<< orphan*/  git_remote ;
typedef  int /*<<< orphan*/  git_checkout_options ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,char const*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static int FUNC6(git_repository *repo, git_remote *remote, const git_checkout_options *co_opts, const char *branch, const char *reflog_message)
{
	int error;

	if (branch)
		error = FUNC4(repo, FUNC1(remote), branch,
				reflog_message);
	/* Point HEAD to the same ref as the remote's head */
	else
		error = FUNC5(repo, remote, reflog_message);

	if (!error && FUNC3(repo, FUNC2(repo), co_opts))
		error = FUNC0(repo, co_opts);

	return error;
}
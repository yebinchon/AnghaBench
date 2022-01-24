#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_repository ;
struct TYPE_12__ {char* ptr; int size; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_REPOSITORY_ITEM_GITDIR ; 
 int WM_CASEFOLD ; 
 scalar_t__ WM_MATCH ; 
 int WM_PATHNAME ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,char const*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 
 scalar_t__ FUNC8 (char const) ; 
 int FUNC9 (TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,char const*) ; 
 int FUNC11 (char const*) ; 
 scalar_t__ FUNC12 (char const*,char const*,int) ; 

__attribute__((used)) static int FUNC13(
	int *matches,
	const git_repository *repo,
	const char *cfg_file,
	const char *condition,
	bool case_insensitive)
{
	git_buf pattern = GIT_BUF_INIT, gitdir = GIT_BUF_INIT;
	int error;

	if (condition[0] == '.' && FUNC8(condition[1])) {
		FUNC6(&pattern, cfg_file);
		FUNC1(&pattern, pattern.ptr, condition + 2);
	} else if (condition[0] == '~' && FUNC8(condition[1]))
		FUNC10(&pattern, condition + 1);
	else if (!FUNC7(condition))
		FUNC1(&pattern, "**", condition);
	else
		FUNC4(&pattern, condition);

	if (FUNC8(condition[FUNC11(condition) - 1]))
		FUNC3(&pattern, "**");

	if (FUNC2(&pattern)) {
		error = -1;
		goto out;
	}

	if ((error = FUNC9(&gitdir, repo, GIT_REPOSITORY_ITEM_GITDIR)) < 0)
		goto out;

	if (FUNC8(gitdir.ptr[gitdir.size - 1]))
		FUNC5(&gitdir, gitdir.size - 1);

	*matches = FUNC12(pattern.ptr, gitdir.ptr,
			     WM_PATHNAME | (case_insensitive ? WM_CASEFOLD : 0)) == WM_MATCH;
out:
	FUNC0(&pattern);
	FUNC0(&gitdir);
	return error;
}
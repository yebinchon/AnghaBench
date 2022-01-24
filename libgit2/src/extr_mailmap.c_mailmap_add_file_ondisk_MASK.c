#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_mailmap ;
struct TYPE_6__ {int /*<<< orphan*/  size; int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*,char const*,char const*,int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(
	git_mailmap *mm, const char *path, git_repository *repo)
{
	const char *base = repo ? FUNC3(repo) : NULL;
	git_buf fullpath = GIT_BUF_INIT;
	git_buf content = GIT_BUF_INIT;
	int error;

	error = FUNC2(&fullpath, path, base, NULL);
	if (error < 0)
		goto cleanup;

	error = FUNC1(&content, fullpath.ptr);
	if (error < 0)
		goto cleanup;

	error = FUNC4(mm, content.ptr, content.size);
	if (error < 0)
		goto cleanup;

cleanup:
	FUNC0(&fullpath);
	FUNC0(&content);
	return error;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_repository ;
struct TYPE_3__ {int start; int end; } ;
typedef  TYPE_1__ git_regmatch ;
typedef  int /*<<< orphan*/  git_regexp ;
typedef  int /*<<< orphan*/  git_reflog_entry ;
typedef  int /*<<< orphan*/  git_reflog ;
typedef  int /*<<< orphan*/  git_reference ;
typedef  int /*<<< orphan*/  git_object ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 int GIT_EINVALIDSPEC ; 
 int GIT_ENOTFOUND ; 
 int /*<<< orphan*/  GIT_HEAD_FILE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char const*,int) ; 
 int FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,size_t) ; 
 char* FUNC8 (int /*<<< orphan*/  const*) ; 
 size_t FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,char const*,int,TYPE_1__*) ; 
 int FUNC14 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(git_object **out, git_reference **base_ref, git_repository *repo, const char *identifier, size_t position)
{
	git_reference *ref = NULL;
	git_reflog *reflog = NULL;
	git_regexp preg;
	int error = -1;
	size_t i, numentries, cur;
	const git_reflog_entry *entry;
	const char *msg;
	git_buf buf = GIT_BUF_INIT;

	cur = position;

	if (*identifier != '\0' || *base_ref != NULL)
		return GIT_EINVALIDSPEC;

	if (FUNC0(&preg, "checkout: moving from (.*) to .*") < 0)
		return -1;

	if (FUNC6(&ref, repo, GIT_HEAD_FILE) < 0)
		goto cleanup;

	if (FUNC11(&reflog, repo, GIT_HEAD_FILE) < 0)
		goto cleanup;

	numentries  = FUNC9(reflog);

	for (i = 0; i < numentries; i++) {
		git_regmatch regexmatches[2];

		entry = FUNC7(reflog, i);
		msg = FUNC8(entry);
		if (!msg)
			continue;

		if (FUNC13(&preg, msg, 2, regexmatches) < 0)
			continue;

		cur--;

		if (cur > 0)
			continue;

		if ((FUNC3(&buf, msg+regexmatches[1].start, regexmatches[1].end - regexmatches[1].start)) < 0)
			goto cleanup;

		if ((error = FUNC4(base_ref, repo, FUNC1(&buf))) == 0)
			goto cleanup;

		if (error < 0 && error != GIT_ENOTFOUND)
			goto cleanup;

		error = FUNC14(out, repo, FUNC1(&buf));

		goto cleanup;
	}

	error = GIT_ENOTFOUND;

cleanup:
	FUNC5(ref);
	FUNC2(&buf);
	FUNC12(&preg);
	FUNC10(reflog);
	return error;
}
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
typedef  int (* git_stash_cb ) (size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_reflog_entry ;
typedef  int /*<<< orphan*/  git_reflog ;
typedef  int /*<<< orphan*/  git_reference ;

/* Variables and functions */
 int GIT_ENOTFOUND ; 
 int /*<<< orphan*/  GIT_REFS_STASH_FILE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*) ; 
 size_t FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC10(
	git_repository *repo,
	git_stash_cb callback,
	void *payload)
{
	git_reference *stash;
	git_reflog *reflog = NULL;
	int error;
	size_t i, max;
	const git_reflog_entry *entry;

	error = FUNC3(&stash, repo, GIT_REFS_STASH_FILE);
	if (error == GIT_ENOTFOUND) {
		FUNC0();
		return 0;
	}
	if (error < 0)
		goto cleanup;

	if ((error = FUNC9(&reflog, repo, GIT_REFS_STASH_FILE)) < 0)
		goto cleanup;

	max = FUNC7(reflog);
	for (i = 0; i < max; i++) {
		entry = FUNC4(reflog, i);

		error = callback(i,
			FUNC6(entry),
			FUNC5(entry),
			payload);

		if (error) {
			FUNC1(error);
			break;
		}
	}

cleanup:
	FUNC2(stash);
	FUNC8(reflog);
	return error;
}
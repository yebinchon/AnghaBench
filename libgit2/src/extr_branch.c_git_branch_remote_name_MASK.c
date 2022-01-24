#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {size_t count; char** strings; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ git_strarray ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_remote ;
typedef  int /*<<< orphan*/  git_refspec ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int GIT_EAMBIGUOUS ; 
 int GIT_ENOTFOUND ; 
 int GIT_ERROR ; 
 int /*<<< orphan*/  GIT_ERROR_INVALID ; 
 int /*<<< orphan*/  GIT_ERROR_REFERENCE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 

int FUNC12(git_buf *buf, git_repository *repo, const char *refname)
{
	git_strarray remote_list = {0};
	size_t i;
	git_remote *remote;
	const git_refspec *fetchspec;
	int error = 0;
	char *remote_name = NULL;

	FUNC0(buf && repo && refname);

	FUNC4(buf);

	/* Verify that this is a remote branch */
	if (!FUNC6(refname)) {
		FUNC5(GIT_ERROR_INVALID, "reference '%s' is not a remote branch.",
			refname);
		error = GIT_ERROR;
		goto cleanup;
	}

	/* Get the remotes */
	if ((error = FUNC9(&remote_list, repo)) < 0)
		goto cleanup;

	/* Find matching remotes */
	for (i = 0; i < remote_list.count; i++) {
		if ((error = FUNC10(&remote, repo, remote_list.strings[i])) < 0)
			continue;

		fetchspec = FUNC7(remote, refname);
		if (fetchspec) {
			/* If we have not already set out yet, then set
			 * it to the matching remote name. Otherwise
			 * multiple remotes match this reference, and it
			 * is ambiguous. */
			if (!remote_name) {
				remote_name = remote_list.strings[i];
			} else {
				FUNC8(remote);

				FUNC5(GIT_ERROR_REFERENCE,
					"reference '%s' is ambiguous", refname);
				error = GIT_EAMBIGUOUS;
				goto cleanup;
			}
		}

		FUNC8(remote);
	}

	if (remote_name) {
		FUNC1(buf);
		error = FUNC3(buf, remote_name);
	} else {
		FUNC5(GIT_ERROR_REFERENCE,
			"could not determine remote for '%s'", refname);
		error = GIT_ENOTFOUND;
	}

cleanup:
	if (error < 0)
		FUNC2(buf);

	FUNC11(&remote_list);
	return error;
}
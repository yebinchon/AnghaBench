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
typedef  int /*<<< orphan*/  git_reference ;
typedef  int /*<<< orphan*/  git_oid ;

/* Variables and functions */
 int GIT_ENOTFOUND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static int FUNC5(
	git_repository *remote_repo,
	const char *lref,
	const char *rref,
	git_oid *loid,
	git_oid *roid)
{
	int error;
	git_reference *remote_ref = NULL;

	/* check for lhs, if it's empty it means to delete */
	if (lref[0] != '\0') {
		/* Create or update a ref */
		error = FUNC1(NULL, remote_repo, rref, loid,
					     !FUNC0(roid), NULL);
	} else {
		/* Delete a ref */
		if ((error = FUNC4(&remote_ref, remote_repo, rref)) < 0) {
			if (error == GIT_ENOTFOUND)
				error = 0;
			return error;
		}

		error = FUNC2(remote_ref);
		FUNC3(remote_ref);
	}

	return error;
}
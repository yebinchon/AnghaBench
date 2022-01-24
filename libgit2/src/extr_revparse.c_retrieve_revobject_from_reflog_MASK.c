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
typedef  int /*<<< orphan*/  git_object ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_OBJECT_ANY ; 
 int FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static int FUNC5(git_object **out, git_reference **base_ref, git_repository *repo, const char *identifier, size_t position)
{
	git_reference *ref;
	git_oid oid;
	int error = -1;

	if (*base_ref == NULL) {
		if ((error = FUNC1(&ref, repo, identifier)) < 0)
			return error;
	} else {
		ref = *base_ref;
		*base_ref = NULL;
	}

	if (position == 0) {
		error = FUNC0(out, repo, FUNC3(ref), GIT_OBJECT_ANY);
		goto cleanup;
	}

	if ((error = FUNC4(&oid, ref, position)) < 0)
		goto cleanup;

	error = FUNC0(out, repo, &oid, GIT_OBJECT_ANY);

cleanup:
	FUNC2(ref);
	return error;
}
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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,int) ; 
 int FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(
	git_oid *peeled_out,
	git_oid *ref_target_out,
	git_repository *repo,
	const char *refname)
{
	git_reference *ref;
	git_object *peeled = NULL;
	int error;

	if ((error = FUNC5(&ref, repo, refname, -1)) < 0)
		return error;

	if ((error = FUNC6(&peeled, ref, GIT_OBJECT_ANY)) < 0)
		goto cleanup;

	FUNC3(ref_target_out, FUNC7(ref));
	FUNC3(peeled_out, FUNC1(peeled));

	if (FUNC2(ref_target_out, peeled_out) != 0)
		error = 1; /* The reference was pointing to a annotated tag */
	else
		error = 0; /* Any other object */

cleanup:
	FUNC4(ref);
	FUNC0(peeled);
	return error;
}
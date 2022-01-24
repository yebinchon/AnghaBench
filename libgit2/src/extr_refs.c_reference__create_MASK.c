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
typedef  int /*<<< orphan*/  git_signature ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_refname_t ;
typedef  int /*<<< orphan*/  git_reference ;
typedef  int /*<<< orphan*/  git_refdb ;
typedef  int /*<<< orphan*/  git_oid ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GIT_ERROR_REFERENCE ; 
 int /*<<< orphan*/  GIT_OBJECT_ANY ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/  const*,char const*,int /*<<< orphan*/  const*,char const*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int git_reference__enable_symbolic_ref_target_validation ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*,int) ; 

__attribute__((used)) static int FUNC10(
	git_reference **ref_out,
	git_repository *repo,
	const char *name,
	const git_oid *oid,
	const char *symbolic,
	int force,
	const git_signature *signature,
	const char *log_message,
	const git_oid *old_id,
	const char *old_target)
{
	git_refname_t normalized;
	git_refdb *refdb;
	git_reference *ref = NULL;
	int error = 0;

	FUNC1(repo && name);
	FUNC1(symbolic || signature);

	if (ref_out)
		*ref_out = NULL;

	error = FUNC9(normalized, repo, name, true);
	if (error < 0)
		return error;

	error = FUNC8(&refdb, repo);
	if (error < 0)
		return error;

	if (oid != NULL) {
		FUNC1(symbolic == NULL);

		if (!FUNC3(repo, oid, GIT_OBJECT_ANY)) {
			FUNC2(GIT_ERROR_REFERENCE,
				"target OID for the reference doesn't exist on the repository");
			return -1;
		}

		ref = FUNC5(normalized, oid, NULL);
	} else {
		git_refname_t normalized_target;

		error = FUNC9(normalized_target, repo,
			symbolic, git_reference__enable_symbolic_ref_target_validation);

		if (error < 0)
			return error;

		ref = FUNC6(normalized, normalized_target);
	}

	FUNC0(ref);

	if ((error = FUNC4(refdb, ref, force, signature, log_message, old_id, old_target)) < 0) {
		FUNC7(ref);
		return error;
	}

	if (ref_out == NULL)
		FUNC7(ref);
	else
		*ref_out = ref;

	return 0;
}
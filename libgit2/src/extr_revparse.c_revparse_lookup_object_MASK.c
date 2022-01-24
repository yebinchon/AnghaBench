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
typedef  int /*<<< orphan*/  git_object ;

/* Variables and functions */
 int GIT_ENOTFOUND ; 
 int /*<<< orphan*/  GIT_ERROR_REFERENCE ; 
 int /*<<< orphan*/  GIT_OBJECT_ANY ; 
 scalar_t__ GIT_OID_HEXSZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 
 int FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*) ; 
 int FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*) ; 
 int FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC7 (char const*) ; 

__attribute__((used)) static int FUNC8(
	git_object **object_out,
	git_reference **reference_out,
	git_repository *repo,
	const char *spec)
{
	int error;
	git_reference *ref;

	if ((error = FUNC6(object_out, repo, spec)) != GIT_ENOTFOUND)
		return error;

	error = FUNC2(&ref, repo, spec);
	if (!error) {

		error = FUNC1(
			object_out, repo, FUNC3(ref), GIT_OBJECT_ANY);

		if (!error)
			*reference_out = ref;

		return error;
	}

	if (error != GIT_ENOTFOUND)
		return error;

	if ((FUNC7(spec) < GIT_OID_HEXSZ) &&
		((error = FUNC4(object_out, repo, spec)) != GIT_ENOTFOUND))
			return error;

	if ((error = FUNC5(object_out, repo, spec)) != GIT_ENOTFOUND)
		return error;

	FUNC0(GIT_ERROR_REFERENCE, "revspec '%s' not found", spec);
	return GIT_ENOTFOUND;
}
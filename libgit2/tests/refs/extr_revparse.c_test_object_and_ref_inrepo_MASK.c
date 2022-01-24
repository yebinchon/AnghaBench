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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 char const* FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static void FUNC10(
	const char *spec,
	const char *expected_oid,
	const char *expected_refname,
	git_repository *repo,
	bool assert_reference_retrieval)
{
	char objstr[64] = {0};
	git_object *obj = NULL;
	git_reference *ref = NULL;
	int error;

	error = FUNC9(&obj, &ref, repo, spec);

	if (expected_oid != NULL) {
		FUNC3(error);
		FUNC6(objstr, FUNC5(obj));
		FUNC1(objstr, expected_oid);
	} else
		FUNC2(error);

	if (assert_reference_retrieval) {
		if (expected_refname == NULL)
			FUNC0(NULL == ref);
		else
			FUNC1(expected_refname, FUNC8(ref));
	}

	FUNC4(obj);
	FUNC7(ref);
}
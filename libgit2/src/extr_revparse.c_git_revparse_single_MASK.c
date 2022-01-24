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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*) ; 

int FUNC3(git_object **out, git_repository *repo, const char *spec)
{
	int error;
	git_object *obj = NULL;
	git_reference *ref = NULL;

	*out = NULL;

	if ((error = FUNC2(&obj, &ref, repo, spec)) < 0)
		goto cleanup;

	FUNC1(ref);

	*out = obj;

	return 0;

cleanup:
	FUNC0(obj);
	FUNC1(ref);
	return error;
}
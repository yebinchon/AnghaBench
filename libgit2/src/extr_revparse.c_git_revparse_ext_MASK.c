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
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ **,size_t*,int /*<<< orphan*/ *,char const*) ; 

int FUNC4(
	git_object **object_out,
	git_reference **reference_out,
	git_repository *repo,
	const char *spec)
{
	int error;
	size_t identifier_len;
	git_object *obj = NULL;
	git_reference *ref = NULL;

	if ((error = FUNC3(&obj, &ref, &identifier_len, repo, spec)) < 0)
		goto cleanup;

	*object_out = obj;
	*reference_out = ref;
	FUNC0(identifier_len);

	return 0;

cleanup:
	FUNC1(obj);
	FUNC2(ref);
	return error;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  oid; } ;
struct TYPE_11__ {scalar_t__ type; TYPE_1__ target; int /*<<< orphan*/  peel; } ;
typedef  TYPE_2__ git_reference ;
typedef  scalar_t__ git_object_t ;
typedef  int /*<<< orphan*/  git_object ;

/* Variables and functions */
 scalar_t__ GIT_OBJECT_ANY ; 
 scalar_t__ GIT_OBJECT_TAG ; 
 scalar_t__ GIT_REFERENCE_DIRECT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__ const*) ; 
 int FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__ const*) ; 
 int FUNC9 (TYPE_2__**,TYPE_2__ const*) ; 
 int FUNC10 (int,TYPE_2__ const*,char*) ; 

int FUNC11(
	git_object **peeled,
	const git_reference *ref,
	git_object_t target_type)
{
	const git_reference *resolved = NULL;
	git_reference *allocated = NULL;
	git_object *target = NULL;
	int error;

	FUNC0(ref);

	if (ref->type == GIT_REFERENCE_DIRECT) {
		resolved = ref;
	} else {
		if ((error = FUNC9(&allocated, ref)) < 0)
			return FUNC10(error, ref, "Cannot resolve reference");

		resolved = allocated;
	}

	/*
	 * If we try to peel an object to a tag, we cannot use
	 * the fully peeled object, as that will always resolve
	 * to a commit. So we only want to use the peeled value
	 * if it is not zero and the target is not a tag.
	 */
	if (target_type != GIT_OBJECT_TAG && !FUNC6(&resolved->peel)) {
		error = FUNC3(&target,
			FUNC8(ref), &resolved->peel, GIT_OBJECT_ANY);
	} else {
		error = FUNC3(&target,
			FUNC8(ref), &resolved->target.oid, GIT_OBJECT_ANY);
	}

	if (error < 0) {
		FUNC10(error, ref, "Cannot retrieve reference target");
		goto cleanup;
	}

	if (target_type == GIT_OBJECT_ANY && FUNC5(target) != GIT_OBJECT_TAG)
		error = FUNC1(peeled, target);
	else
		error = FUNC4(peeled, target, target_type);

cleanup:
	FUNC2(target);
	FUNC7(allocated);

	return error;
}
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
typedef  scalar_t__ git_object_t ;
typedef  int /*<<< orphan*/  const git_object ;

/* Variables and functions */
 scalar_t__ GIT_OBJECT_ANY ; 
 scalar_t__ GIT_OBJECT_BLOB ; 
 scalar_t__ GIT_OBJECT_COMMIT ; 
 scalar_t__ GIT_OBJECT_TAG ; 
 scalar_t__ GIT_OBJECT_TREE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (scalar_t__,scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/  const**,int /*<<< orphan*/  const*) ; 
 int FUNC3 (int /*<<< orphan*/  const**,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/  const*) ; 
 int FUNC7 (int,int /*<<< orphan*/ ,scalar_t__) ; 

int FUNC8(
	git_object **peeled,
	const git_object *object,
	git_object_t target_type)
{
	git_object *source, *deref = NULL;
	int error;

	FUNC0(object && peeled);

	FUNC0(target_type == GIT_OBJECT_TAG ||
		target_type == GIT_OBJECT_COMMIT ||
		target_type == GIT_OBJECT_TREE ||
		target_type == GIT_OBJECT_BLOB ||
		target_type == GIT_OBJECT_ANY);

	if ((error = FUNC1(FUNC6(object), target_type)) < 0)
		return FUNC7(error, FUNC5(object), target_type);

	if (FUNC6(object) == target_type)
		return FUNC3(peeled, (git_object *)object);

	source = (git_object *)object;

	while (!(error = FUNC2(&deref, source))) {

		if (source != object)
			FUNC4(source);

		if (FUNC6(deref) == target_type) {
			*peeled = deref;
			return 0;
		}

		if (target_type == GIT_OBJECT_ANY &&
			FUNC6(deref) != FUNC6(object))
		{
			*peeled = deref;
			return 0;
		}

		source = deref;
		deref = NULL;
	}

	if (source != object)
		FUNC4(source);

	FUNC4(deref);

	if (error)
		error = FUNC7(error, FUNC5(object), target_type);

	return error;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_tag ;
struct TYPE_6__ {int /*<<< orphan*/  repo; } ;
typedef  TYPE_1__ git_packbuilder ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_object ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ERROR_INVALID ; 
 int /*<<< orphan*/  GIT_OBJECT_ANY ; 
#define  GIT_OBJECT_BLOB 131 
#define  GIT_OBJECT_COMMIT 130 
#define  GIT_OBJECT_TAG 129 
#define  GIT_OBJECT_TREE 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/  const*,char const*) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/  const*) ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(git_packbuilder *pb, const git_oid *id, const char *name)
{
	git_object *obj;
	int error;

	FUNC0(pb && id);

	if ((error = FUNC3(&obj, pb->repo, id, GIT_OBJECT_ANY)) < 0)
		return error;

	switch (FUNC4(obj)) {
	case GIT_OBJECT_BLOB:
		error = FUNC5(pb, id, name);
		break;
	case GIT_OBJECT_TREE:
		error = FUNC7(pb, id);
		break;
	case GIT_OBJECT_COMMIT:
		error = FUNC6(pb, id);
		break;
	case GIT_OBJECT_TAG:
		if ((error = FUNC5(pb, id, name)) < 0)
			goto cleanup;
		error = FUNC9(pb, FUNC8((git_tag *) obj), NULL);
		break;

	default:
		FUNC1(GIT_ERROR_INVALID, "unknown object type");
		error = -1;
	}

cleanup:
	FUNC2(obj);
	return error;
}
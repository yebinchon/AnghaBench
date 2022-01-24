#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_oid ;
struct TYPE_6__ {int /*<<< orphan*/  type; } ;
struct TYPE_7__ {TYPE_1__ cached; } ;
typedef  TYPE_2__ git_odb_object ;
typedef  int /*<<< orphan*/  git_odb ;
typedef  int /*<<< orphan*/  git_object_t ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ENOTFOUND ; 
 int GIT_PASSTHROUGH ; 
 int FUNC0 (int /*<<< orphan*/ ,char*) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_2__**,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int FUNC6 (size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static int FUNC7(git_object_t *type_p, git_odb *db, const git_oid *id)
{
	git_odb_object *object;
	size_t _unused;
	int error;

	if (FUNC3(id))
		return FUNC0(GIT_ENOTFOUND, "cannot get object type");

	if ((object = FUNC1(FUNC4(db), id)) != NULL) {
		*type_p = object->cached.type;
		FUNC2(object);
		return 0;
	}

	error = FUNC6(&_unused, type_p, db, id, false);

	if (error == GIT_PASSTHROUGH) {
		error = FUNC5(&object, db, id, false);
		if (!error)
			*type_p = object->cached.type;
		FUNC2(object);
	}

	return error;
}
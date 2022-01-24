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
struct TYPE_6__ {size_t size; int /*<<< orphan*/  type; } ;
struct TYPE_7__ {TYPE_1__ cached; } ;
typedef  TYPE_2__ git_odb_object ;
typedef  int /*<<< orphan*/  git_odb ;
typedef  int /*<<< orphan*/  git_object_t ;

/* Variables and functions */
 int GIT_ENOTFOUND ; 
 int /*<<< orphan*/  GIT_OID_HEXSZ ; 
 int GIT_PASSTHROUGH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int,char*) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int FUNC3 (char*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_2__**,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 

int FUNC9(
	git_odb_object **out, size_t *len_p, git_object_t *type_p,
	git_odb *db, const git_oid *id)
{
	int error = GIT_ENOTFOUND;
	git_odb_object *object;

	FUNC0(db && id && out && len_p && type_p);

	*out = NULL;

	if (FUNC6(id))
		return FUNC1(GIT_ENOTFOUND, "cannot read object");

	if ((object = FUNC2(FUNC7(db), id)) != NULL) {
		*len_p = object->cached.size;
		*type_p = object->cached.type;
		*out = object;
		return 0;
	}

	error = FUNC8(len_p, type_p, db, id, false);

	if (error == GIT_ENOTFOUND && !FUNC5(db))
		error = FUNC8(len_p, type_p, db, id, true);

	if (error == GIT_ENOTFOUND)
		return FUNC3("cannot read header for", id, GIT_OID_HEXSZ);

	/* we found the header; return early */
	if (!error)
		return 0;

	if (error == GIT_PASSTHROUGH) {
		/*
		 * no backend has header-reading functionality
		 * so try using `git_odb_read` instead
		 */
		error = FUNC4(&object, db, id);
		if (!error) {
			*len_p = object->cached.size;
			*type_p = object->cached.type;
			*out = object;
		}
	}

	return error;
}
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
struct rev_info {scalar_t__ exclude_promisor_objects; scalar_t__ ignore_missing; int /*<<< orphan*/  repo; } ;
struct object_id {int dummy; } ;
struct object {unsigned int flags; } ;
struct commit {int dummy; } ;

/* Variables and functions */
 scalar_t__ OBJ_COMMIT ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 scalar_t__ FUNC1 (struct object_id const*) ; 
 struct commit* FUNC2 (int /*<<< orphan*/ ,struct object_id const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct object_id const*,int /*<<< orphan*/ *) ; 
 struct object* FUNC4 (int /*<<< orphan*/ ,struct object_id const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct commit*) ; 

__attribute__((used)) static struct object *FUNC6(struct rev_info *revs, const char *name,
				    const struct object_id *oid,
				    unsigned int flags)
{
	struct object *object;

	/*
	 * If the repository has commit graphs, repo_parse_commit() avoids
	 * reading the object buffer, so use it whenever possible.
	 */
	if (FUNC3(revs->repo, oid, NULL) == OBJ_COMMIT) {
		struct commit *c = FUNC2(revs->repo, oid);
		if (!FUNC5(revs->repo, c))
			object = (struct object *) c;
		else
			object = NULL;
	} else {
		object = FUNC4(revs->repo, oid);
	}

	if (!object) {
		if (revs->ignore_missing)
			return object;
		if (revs->exclude_promisor_objects && FUNC1(oid))
			return NULL;
		FUNC0("bad object %s", name);
	}
	object->flags |= flags;
	return object;
}
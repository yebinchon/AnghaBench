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
struct object_id {int dummy; } ;
struct object {scalar_t__ type; } ;
struct handle_one_ref_cb {int /*<<< orphan*/  repo; struct commit_list** list; } ;
struct commit_list {int dummy; } ;
struct commit {int dummy; } ;

/* Variables and functions */
 scalar_t__ OBJ_COMMIT ; 
 scalar_t__ OBJ_TAG ; 
 int /*<<< orphan*/  FUNC0 (struct commit*,struct commit_list**) ; 
 struct object* FUNC1 (int /*<<< orphan*/ ,struct object*,char const*,int /*<<< orphan*/ ) ; 
 struct object* FUNC2 (int /*<<< orphan*/ ,struct object_id const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 

__attribute__((used)) static int FUNC4(const char *path, const struct object_id *oid,
			  int flag, void *cb_data)
{
	struct handle_one_ref_cb *cb = cb_data;
	struct commit_list **list = cb->list;
	struct object *object = FUNC2(cb->repo, oid);
	if (!object)
		return 0;
	if (object->type == OBJ_TAG) {
		object = FUNC1(cb->repo, object, path,
				   FUNC3(path));
		if (!object)
			return 0;
	}
	if (object->type != OBJ_COMMIT)
		return 0;
	FUNC0((struct commit *)object, list);
	return 0;
}
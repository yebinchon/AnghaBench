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
struct object {scalar_t__ parsed; } ;
struct tree {struct object object; int /*<<< orphan*/  buffer; } ;
struct tag {struct object object; } ;
struct repository {int dummy; } ;
struct object_id {int dummy; } ;
struct commit {struct object object; } ;
struct blob {struct object object; } ;
typedef  enum object_type { ____Placeholder_object_type } object_type ;

/* Variables and functions */
 int OBJ_BLOB ; 
 int OBJ_COMMIT ; 
 int OBJ_TAG ; 
 int OBJ_TREE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct repository*,struct commit*,int /*<<< orphan*/ *) ; 
 struct blob* FUNC2 (struct repository*,struct object_id const*) ; 
 struct commit* FUNC3 (struct repository*,struct object_id const*) ; 
 struct tag* FUNC4 (struct repository*,struct object_id const*) ; 
 struct tree* FUNC5 (struct repository*,struct object_id const*) ; 
 int /*<<< orphan*/  FUNC6 (struct object_id const*) ; 
 scalar_t__ FUNC7 (struct blob*,void*,unsigned long) ; 
 scalar_t__ FUNC8 (struct repository*,struct commit*,void*,unsigned long,int) ; 
 scalar_t__ FUNC9 (struct repository*,struct tag*,void*,unsigned long) ; 
 scalar_t__ FUNC10 (struct tree*,void*,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (struct repository*,struct commit*,void*,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

struct object *FUNC13(struct repository *r, const struct object_id *oid, enum object_type type, unsigned long size, void *buffer, int *eaten_p)
{
	struct object *obj;
	*eaten_p = 0;

	obj = NULL;
	if (type == OBJ_BLOB) {
		struct blob *blob = FUNC2(r, oid);
		if (blob) {
			if (FUNC7(blob, buffer, size))
				return NULL;
			obj = &blob->object;
		}
	} else if (type == OBJ_TREE) {
		struct tree *tree = FUNC5(r, oid);
		if (tree) {
			obj = &tree->object;
			if (!tree->buffer)
				tree->object.parsed = 0;
			if (!tree->object.parsed) {
				if (FUNC10(tree, buffer, size))
					return NULL;
				*eaten_p = 1;
			}
		}
	} else if (type == OBJ_COMMIT) {
		struct commit *commit = FUNC3(r, oid);
		if (commit) {
			if (FUNC8(r, commit, buffer, size, 1))
				return NULL;
			if (!FUNC1(r, commit, NULL)) {
				FUNC11(r, commit, buffer, size);
				*eaten_p = 1;
			}
			obj = &commit->object;
		}
	} else if (type == OBJ_TAG) {
		struct tag *tag = FUNC4(r, oid);
		if (tag) {
			if (FUNC9(r, tag, buffer, size))
			       return NULL;
			obj = &tag->object;
		}
	} else {
		FUNC12(FUNC0("object %s has unknown type id %d"), FUNC6(oid), type);
		obj = NULL;
	}
	return obj;
}
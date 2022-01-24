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
struct object {int type; } ;
struct atom_value {int dummy; } ;

/* Variables and functions */
#define  OBJ_BLOB 131 
#define  OBJ_COMMIT 130 
#define  OBJ_TAG 129 
#define  OBJ_TREE 128 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct atom_value*,int,struct object*) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct atom_value*,int,void*) ; 
 int /*<<< orphan*/  FUNC3 (struct atom_value*,int,void*) ; 
 int /*<<< orphan*/  FUNC4 (struct atom_value*,int,struct object*) ; 

__attribute__((used)) static void FUNC5(struct atom_value *val, int deref, struct object *obj, void *buf)
{
	switch (obj->type) {
	case OBJ_TAG:
		FUNC4(val, deref, obj);
		FUNC3(val, deref, buf);
		FUNC2("tagger", val, deref, buf);
		break;
	case OBJ_COMMIT:
		FUNC1(val, deref, obj);
		FUNC3(val, deref, buf);
		FUNC2("author", val, deref, buf);
		FUNC2("committer", val, deref, buf);
		break;
	case OBJ_TREE:
		/* grab_tree_values(val, deref, obj, buf, sz); */
		break;
	case OBJ_BLOB:
		/* grab_blob_values(val, deref, obj, buf, sz); */
		break;
	default:
		FUNC0("Eh?  Object of type %d?", obj->type);
	}
}
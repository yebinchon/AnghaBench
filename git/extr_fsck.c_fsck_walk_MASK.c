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
struct tree {int dummy; } ;
struct tag {int dummy; } ;
struct object {int type; int /*<<< orphan*/  oid; } ;
struct fsck_options {int dummy; } ;
struct commit {int dummy; } ;

/* Variables and functions */
#define  OBJ_BLOB 131 
#define  OBJ_COMMIT 130 
 int OBJ_NONE ; 
#define  OBJ_TAG 129 
#define  OBJ_TREE 128 
 int /*<<< orphan*/  FUNC0 (struct fsck_options*,struct object*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct commit*,void*,struct fsck_options*) ; 
 int FUNC3 (struct tag*,void*,struct fsck_options*) ; 
 int FUNC4 (struct tree*,void*,struct fsck_options*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  the_repository ; 

int FUNC6(struct object *obj, void *data, struct fsck_options *options)
{
	if (!obj)
		return -1;

	if (obj->type == OBJ_NONE)
		FUNC5(the_repository, &obj->oid);

	switch (obj->type) {
	case OBJ_BLOB:
		return 0;
	case OBJ_TREE:
		return FUNC4((struct tree *)obj, data, options);
	case OBJ_COMMIT:
		return FUNC2((struct commit *)obj, data, options);
	case OBJ_TAG:
		return FUNC3((struct tag *)obj, data, options);
	default:
		FUNC1("Unknown object type for %s", FUNC0(options, obj));
		return -1;
	}
}
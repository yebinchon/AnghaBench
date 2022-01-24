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
struct walker {int dummy; } ;
struct tree {int dummy; } ;
struct tag {int dummy; } ;
struct object {scalar_t__ type; int /*<<< orphan*/  oid; } ;
struct commit {int dummy; } ;

/* Variables and functions */
 scalar_t__ OBJ_BLOB ; 
 scalar_t__ OBJ_COMMIT ; 
 scalar_t__ OBJ_TAG ; 
 scalar_t__ OBJ_TREE ; 
 int FUNC0 (char*,int /*<<< orphan*/ ,char*) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct walker*,struct commit*) ; 
 scalar_t__ FUNC3 (struct walker*,struct tag*) ; 
 scalar_t__ FUNC4 (struct walker*,struct tree*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct walker *walker, struct object *obj)
{
	if (obj->type == OBJ_COMMIT) {
		if (FUNC2(walker, (struct commit *)obj))
			return -1;
		return 0;
	}
	if (obj->type == OBJ_TREE) {
		if (FUNC4(walker, (struct tree *)obj))
			return -1;
		return 0;
	}
	if (obj->type == OBJ_BLOB) {
		return 0;
	}
	if (obj->type == OBJ_TAG) {
		if (FUNC3(walker, (struct tag *)obj))
			return -1;
		return 0;
	}
	return FUNC0("Unable to determine requirements "
		     "of type %s for %s",
		     FUNC5(obj->type), FUNC1(&obj->oid));
}
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
struct repository {int dummy; } ;
struct object_id {int dummy; } ;
struct object {int type; } ;

/* Variables and functions */
 int OBJ_COMMIT ; 
 int OBJ_TAG ; 
 int OBJ_TREE ; 
 struct object* FUNC0 (struct repository*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct repository*,struct object_id const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct repository*,struct object_id const*) ; 

__attribute__((used)) static int FUNC3(struct repository *r,
				     const struct object_id *oid,
				     void *cb_data_unused)
{
	struct object *obj;
	int kind;

	kind = FUNC1(r, oid, NULL);
	if (kind == OBJ_TREE || kind == OBJ_COMMIT)
		return 1;
	if (kind != OBJ_TAG)
		return 0;

	/* We need to do this the hard way... */
	obj = FUNC0(r, FUNC2(r, oid), NULL, 0);
	if (obj && (obj->type == OBJ_TREE || obj->type == OBJ_COMMIT))
		return 1;
	return 0;
}
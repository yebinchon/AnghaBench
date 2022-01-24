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
struct tree_desc {int dummy; } ;
struct repository {int dummy; } ;
struct object_id {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct repository*,struct tree_desc*,char const*,struct object_id*,unsigned short*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (struct tree_desc*,void*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct object_id*,struct object_id*) ; 
 void* FUNC4 (struct repository*,struct object_id const*,int /*<<< orphan*/ ,unsigned long*,struct object_id*) ; 
 int /*<<< orphan*/  tree_type ; 

int FUNC5(struct repository *r,
		   const struct object_id *tree_oid,
		   const char *name,
		   struct object_id *oid,
		   unsigned short *mode)
{
	int retval;
	void *tree;
	unsigned long size;
	struct object_id root;

	tree = FUNC4(r, tree_oid, tree_type, &size, &root);
	if (!tree)
		return -1;

	if (name[0] == '\0') {
		FUNC3(oid, &root);
		FUNC1(tree);
		return 0;
	}

	if (!size) {
		retval = -1;
	} else {
		struct tree_desc t;
		FUNC2(&t, tree, size);
		retval = FUNC0(r, &t, name, oid, mode);
	}
	FUNC1(tree);
	return retval;
}
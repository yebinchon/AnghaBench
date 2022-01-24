#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ type; } ;
typedef  TYPE_1__ git_odb_expand_id ;

/* Variables and functions */
 scalar_t__ GIT_OBJECT_ANY ; 
 scalar_t__ GIT_OBJECT_BLOB ; 
 scalar_t__ GIT_OBJECT_TREE ; 
 int /*<<< orphan*/  _odb ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__**,size_t*) ; 

void FUNC6(void)
{
	git_odb_expand_id *ids;
	size_t i, num;

	/* test looking for the actual (correct) types */

	FUNC5(&ids, &num);
	FUNC2(FUNC4(_odb, ids, num));
	FUNC0(ids);
	FUNC3(ids);

	/* test looking for an explicit `type == 0` */

	FUNC5(&ids, &num);

	for (i = 0; i < num; i++)
		ids[i].type = 0;

	FUNC2(FUNC4(_odb, ids, num));
	FUNC0(ids);
	FUNC3(ids);

	/* test looking for an explicit GIT_OBJECT_ANY */

	FUNC5(&ids, &num);

	for (i = 0; i < num; i++)
		ids[i].type = GIT_OBJECT_ANY;

	FUNC2(FUNC4(_odb, ids, num));
	FUNC0(ids);
	FUNC3(ids);

	/* test looking for the completely wrong type */

	FUNC5(&ids, &num);

	for (i = 0; i < num; i++)
		ids[i].type = (ids[i].type == GIT_OBJECT_BLOB) ?
			GIT_OBJECT_TREE : GIT_OBJECT_BLOB;

	FUNC2(FUNC4(_odb, ids, num));
	FUNC1(ids);
	FUNC3(ids);
}
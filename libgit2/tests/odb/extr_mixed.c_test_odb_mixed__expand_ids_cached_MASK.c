#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_odb_object ;
struct TYPE_6__ {scalar_t__ type; int /*<<< orphan*/  length; int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ git_odb_expand_id ;

/* Variables and functions */
 scalar_t__ GIT_OBJECT_ANY ; 
 int /*<<< orphan*/  _odb ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__**,size_t*) ; 

void FUNC7(void)
{
	git_odb_expand_id *ids;
	size_t i, num;

	/* test looking for the actual (correct) types after accessing the object */

	FUNC6(&ids, &num);

	for (i = 0; i < num; i++) {
		git_odb_object *obj;
		if (ids[i].type == GIT_OBJECT_ANY)
			continue;
		FUNC1(FUNC5(&obj, _odb, &ids[i].id, ids[i].length));
		FUNC4(obj);
	}

	FUNC1(FUNC3(_odb, ids, num));
	FUNC0(ids);
	FUNC2(ids);
}
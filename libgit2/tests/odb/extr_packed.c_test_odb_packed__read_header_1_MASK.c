#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_oid ;
struct TYPE_5__ {size_t size; scalar_t__ type; } ;
struct TYPE_6__ {TYPE_1__ cached; } ;
typedef  TYPE_2__ git_odb_object ;
typedef  scalar_t__ git_object_t ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  _odb ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (size_t*,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * loose_objects ; 

void FUNC8(void)
{
	unsigned int i;

	for (i = 0; i < FUNC0(loose_objects); ++i) {
		git_oid id;
		git_odb_object *obj;
		size_t len;
		git_object_t type;

		FUNC2(FUNC7(&id, loose_objects[i]));

		FUNC1(FUNC3(_odb, &id) == 1);

		FUNC2(FUNC5(&obj, _odb, &id));
		FUNC2(FUNC6(&len, &type, _odb, &id));

		FUNC1(obj->cached.size == len);
		FUNC1(obj->cached.type == type);

		FUNC4(obj);
	}
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  oid; scalar_t__ parsed; } ;
struct tree {TYPE_1__ object; } ;
typedef  enum object_type { ____Placeholder_object_type } object_type ;

/* Variables and functions */
 int OBJ_TREE ; 
 int FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct tree*,void*,unsigned long) ; 
 void* FUNC4 (int /*<<< orphan*/ *,int*,unsigned long*) ; 

int FUNC5(struct tree *item, int quiet_on_missing)
{
	 enum object_type type;
	 void *buffer;
	 unsigned long size;

	if (item->object.parsed)
		return 0;
	buffer = FUNC4(&item->object.oid, &type, &size);
	if (!buffer)
		return quiet_on_missing ? -1 :
			FUNC0("Could not read %s",
			     FUNC2(&item->object.oid));
	if (type != OBJ_TREE) {
		FUNC1(buffer);
		return FUNC0("Object %s not a tree",
			     FUNC2(&item->object.oid));
	}
	return FUNC3(item, buffer, size);
}
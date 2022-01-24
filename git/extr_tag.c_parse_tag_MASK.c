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
struct tag {TYPE_1__ object; } ;
typedef  enum object_type { ____Placeholder_object_type } object_type ;

/* Variables and functions */
 int OBJ_TAG ; 
 int FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct tag*,void*,unsigned long) ; 
 void* FUNC4 (int /*<<< orphan*/ *,int*,unsigned long*) ; 
 int /*<<< orphan*/  the_repository ; 

int FUNC5(struct tag *item)
{
	enum object_type type;
	void *data;
	unsigned long size;
	int ret;

	if (item->object.parsed)
		return 0;
	data = FUNC4(&item->object.oid, &type, &size);
	if (!data)
		return FUNC0("Could not read %s",
			     FUNC2(&item->object.oid));
	if (type != OBJ_TAG) {
		FUNC1(data);
		return FUNC0("Object %s not a tag",
			     FUNC2(&item->object.oid));
	}
	ret = FUNC3(the_repository, item, data, size);
	FUNC1(data);
	return ret;
}
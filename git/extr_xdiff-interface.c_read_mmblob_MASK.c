#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct object_id {int dummy; } ;
struct TYPE_3__ {unsigned long size; int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ mmfile_t ;
typedef  enum object_type { ____Placeholder_object_type } object_type ;

/* Variables and functions */
 int OBJ_BLOB ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  null_oid ; 
 int /*<<< orphan*/  FUNC1 (struct object_id const*) ; 
 scalar_t__ FUNC2 (struct object_id const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct object_id const*,int*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

void FUNC5(mmfile_t *ptr, const struct object_id *oid)
{
	unsigned long size;
	enum object_type type;

	if (FUNC2(oid, &null_oid)) {
		ptr->ptr = FUNC4("");
		ptr->size = 0;
		return;
	}

	ptr->ptr = FUNC3(oid, &type, &size);
	if (!ptr->ptr || type != OBJ_BLOB)
		FUNC0("unable to read blob object %s", FUNC1(oid));
	ptr->size = size;
}
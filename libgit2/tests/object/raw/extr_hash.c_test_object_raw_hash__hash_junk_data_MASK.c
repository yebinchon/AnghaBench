#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_oid ;
struct TYPE_4__ {int type; int len; int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 int GIT_OBJECT_BLOB ; 
 int GIT_OBJECT_OFS_DELTA ; 
 int GIT_OBJECT_REF_DELTA ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_1__ junk_obj ; 
 int /*<<< orphan*/ * some_data ; 
 int /*<<< orphan*/  zero_id ; 

void FUNC6(void)
{
	git_oid id, id_zero;

	FUNC1(FUNC3(&id_zero, zero_id));

	/* invalid types: */
	junk_obj.data = some_data;
	FUNC4(&id, &junk_obj);

	junk_obj.type = 0; /* EXT1 */
	FUNC4(&id, &junk_obj);

	junk_obj.type = 5; /* EXT2 */
	FUNC4(&id, &junk_obj);

	junk_obj.type = GIT_OBJECT_OFS_DELTA;
	FUNC4(&id, &junk_obj);

	junk_obj.type = GIT_OBJECT_REF_DELTA;
	FUNC4(&id, &junk_obj);

	junk_obj.type = 42;
	FUNC4(&id, &junk_obj);

	/* data can be NULL only if len is zero: */
	junk_obj.type = GIT_OBJECT_BLOB;
	junk_obj.data = NULL;
	FUNC5(&id, &junk_obj);
	FUNC0(FUNC2(&id, &id_zero) == 0);

	junk_obj.len = 1;
	FUNC4(&id, &junk_obj);
}
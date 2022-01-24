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
struct TYPE_3__ {char* member_0; char* member_1; int /*<<< orphan*/  oid; } ;
typedef  TYPE_1__ fake_object ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_EMISMATCH ; 
 int /*<<< orphan*/  _obj ; 
 int /*<<< orphan*/  _odb ; 
 int /*<<< orphan*/  _oid ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__ const*) ; 

void FUNC5(void)
{
	const fake_object objs[] = {
		{ "1234567890123456789012345678901234567890", "nonmatching content" },
		{ NULL, NULL }
	};

	FUNC4(objs);

	FUNC1(FUNC3(&_oid, objs[0].oid));
	FUNC0(GIT_EMISMATCH, FUNC2(&_obj, _odb, &_oid));
}
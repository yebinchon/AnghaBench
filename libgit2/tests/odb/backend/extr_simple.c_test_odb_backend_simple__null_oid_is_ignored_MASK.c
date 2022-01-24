#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_7__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_9__ {TYPE_1__ member_0; } ;
typedef  TYPE_2__ git_oid ;
typedef  int /*<<< orphan*/  git_odb_object ;
struct TYPE_10__ {char* member_0; char* member_1; } ;
typedef  TYPE_3__ fake_object ;
struct TYPE_11__ {int /*<<< orphan*/  message; } ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ENOTFOUND ; 
 int /*<<< orphan*/  GIT_OPT_ENABLE_STRICT_HASH_VERIFICATION ; 
 int /*<<< orphan*/  _odb ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_7__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__ const*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,char*) ; 

void FUNC9(void)
{
	const fake_object objs[] = {
		{ "0000000000000000000000000000000000000000", "null oid content" },
		{ NULL, NULL }
	};
	git_oid null_oid = {{0}};
	git_odb_object *obj;

	FUNC7(objs);

	FUNC2(FUNC4(GIT_OPT_ENABLE_STRICT_HASH_VERIFICATION, 0));
	FUNC0(!FUNC5(_odb, &null_oid));

	FUNC1(GIT_ENOTFOUND, FUNC6(&obj, _odb, &null_oid));
	FUNC0(FUNC3() && FUNC8(FUNC3()->message, "null OID"));
}
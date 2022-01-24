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
typedef  int /*<<< orphan*/  git_oid ;
struct TYPE_3__ {char* member_0; char* member_1; int /*<<< orphan*/  oid; } ;
typedef  TYPE_1__ fake_object ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_EAMBIGUOUS ; 
 int /*<<< orphan*/  GIT_OPT_ENABLE_STRICT_HASH_VERIFICATION ; 
 int /*<<< orphan*/  _odb ; 
 int /*<<< orphan*/  _oid ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__ const*) ; 

void FUNC8(void)
{
	const fake_object objs[] = {
		{ "1234567890111111111111111111111111111111", "first content" },
		{ "1234567890111111111111111111111111111112", "second content" },
		{ NULL, NULL }
	};
	git_oid found;

	FUNC7(objs);

	FUNC2(FUNC6(&_oid, objs[0].oid));
	FUNC2(FUNC3(GIT_OPT_ENABLE_STRICT_HASH_VERIFICATION, 0));
	FUNC1(GIT_EAMBIGUOUS, FUNC4(&found, _odb, &_oid, 39));
	FUNC2(FUNC4(&found, _odb, &_oid, 40));
	FUNC0(FUNC5(&found, &_oid));
}
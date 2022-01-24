#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_treebuilder ;
struct TYPE_5__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_6__ {TYPE_1__ member_0; } ;
typedef  TYPE_2__ git_oid ;
struct TYPE_7__ {int /*<<< orphan*/  message; } ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_FILEMODE_BLOB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 TYPE_4__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,char*) ; 

void FUNC8(void)
{
	git_treebuilder *bld;
	git_oid null_oid = {{0}};

	FUNC2(FUNC6(&bld, g_repo, NULL));
	FUNC1(FUNC5(NULL, bld, "null_oid_file", &null_oid, GIT_FILEMODE_BLOB));
	FUNC0(FUNC3() && FUNC7(FUNC3()->message, "null OID") != NULL);

	FUNC4(bld);
}
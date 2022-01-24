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
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_object ;
struct TYPE_2__ {scalar_t__ type; int /*<<< orphan*/ * sha; } ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_OBJECT_ANY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* g_data ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void *FUNC6(void *arg)
{
	int i;
	git_oid oid;
	git_object *obj;

	for (i = ((int *)arg)[1]; g_data[i].sha != NULL; i += 2) {
		FUNC1(FUNC5(&oid, g_data[i].sha));
		FUNC1(FUNC3(&obj, g_repo, &oid, GIT_OBJECT_ANY));
		FUNC0(g_data[i].type == FUNC4(obj));
		FUNC2(obj);
	}

	for (i = 0; i < ((int *)arg)[1]; i += 2) {
		FUNC1(FUNC5(&oid, g_data[i].sha));
		FUNC1(FUNC3(&obj, g_repo, &oid, GIT_OBJECT_ANY));
		FUNC0(g_data[i].type == FUNC4(obj));
		FUNC2(obj);
	}

	return arg;
}
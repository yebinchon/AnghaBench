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
typedef  int /*<<< orphan*/  git_odb_object ;
typedef  int /*<<< orphan*/  git_odb ;
struct TYPE_2__ {scalar_t__ type; int /*<<< orphan*/ * sha; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* g_data ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *FUNC8(void *arg)
{
	int i;
	git_oid oid;
	git_odb *odb;
	git_odb_object *odb_obj;

	FUNC1(FUNC7(&odb, g_repo));

	for (i = ((int *)arg)[1]; g_data[i].sha != NULL; i += 2) {
		FUNC1(FUNC6(&oid, g_data[i].sha));
		FUNC1(FUNC5(&odb_obj, odb, &oid));
		FUNC0(g_data[i].type == FUNC4(odb_obj));
		FUNC3(odb_obj);
	}

	for (i = 0; i < ((int *)arg)[1]; i += 2) {
		FUNC1(FUNC6(&oid, g_data[i].sha));
		FUNC1(FUNC5(&odb_obj, odb, &oid));
		FUNC0(g_data[i].type == FUNC4(odb_obj));
		FUNC3(odb_obj);
	}

	FUNC2(odb);

	return arg;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_odb_object ;
typedef  int /*<<< orphan*/  git_odb ;
typedef  int /*<<< orphan*/  git_object ;
struct TYPE_7__ {scalar_t__ type; scalar_t__ size; int /*<<< orphan*/ * sha; } ;
struct TYPE_6__ {int /*<<< orphan*/  objects; } ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_OBJECT_ANY ; 
 scalar_t__ GIT_OBJECT_BLOB ; 
 int /*<<< orphan*/  GIT_OPT_SET_CACHE_OBJECT_LIMIT ; 
 scalar_t__ cache_limit ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_5__* g_data ; 
 TYPE_1__* g_repo ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ **,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__**,int /*<<< orphan*/ ) ; 
 scalar_t__ object_type ; 

void FUNC16(void)
{
	int i, start, nonmatching = 0;
	git_oid oid;
	git_odb_object *odb_obj;
	git_object *obj;
	git_odb *odb;

	FUNC5(GIT_OPT_SET_CACHE_OBJECT_LIMIT, object_type, cache_limit);

	FUNC3(FUNC15(&g_repo, FUNC2("testrepo.git")));
	FUNC3(FUNC14(&odb, g_repo));

	start = (int)FUNC4(&g_repo->objects);

	for (i = 0; g_data[i].sha != NULL; ++i) {
		int count = (int)FUNC4(&g_repo->objects);

		FUNC3(FUNC13(&oid, g_data[i].sha));

		/* alternate between loading raw and parsed objects */
		if ((i & 1) == 0) {
			FUNC3(FUNC12(&odb_obj, odb, &oid));
			FUNC0(g_data[i].type == FUNC11(odb_obj));
			FUNC10(odb_obj);
		} else {
			FUNC3(FUNC7(&obj, g_repo, &oid, GIT_OBJECT_ANY));
			FUNC0(g_data[i].type == FUNC8(obj));
			FUNC6(obj);
		}

		if ((g_data[i].type == object_type && g_data[i].size >= cache_limit) ||
		    (g_data[i].type != object_type && g_data[i].type == GIT_OBJECT_BLOB))
			FUNC1(count, (int)FUNC4(&g_repo->objects));
		else {
			FUNC1(count + 1, (int)FUNC4(&g_repo->objects));
			nonmatching++;
		}
	}

	FUNC1(nonmatching, (int)FUNC4(&g_repo->objects) - start);

	for (i = 0; g_data[i].sha != NULL; ++i) {
		int count = (int)FUNC4(&g_repo->objects);

		FUNC3(FUNC13(&oid, g_data[i].sha));
		FUNC3(FUNC7(&obj, g_repo, &oid, GIT_OBJECT_ANY));
		FUNC0(g_data[i].type == FUNC8(obj));
		FUNC6(obj);

		FUNC1(count, (int)FUNC4(&g_repo->objects));
	}

	FUNC9(odb);
}
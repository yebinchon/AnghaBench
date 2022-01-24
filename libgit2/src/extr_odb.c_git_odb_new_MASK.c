#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  own_cache; int /*<<< orphan*/  backends; } ;
typedef  TYPE_1__ git_odb ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  backend_sort_cmp ; 
 TYPE_1__* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

int FUNC7(git_odb **out)
{
	git_odb *db = FUNC2(1, sizeof(*db));
	FUNC0(db);

	if (FUNC5(&db->own_cache) < 0) {
		FUNC3(db);
		return -1;
	}
	if (FUNC6(&db->backends, 4, backend_sort_cmp) < 0) {
		FUNC4(&db->own_cache);
		FUNC3(db);
		return -1;
	}

	*out = db;
	FUNC1(db);
	return 0;
}
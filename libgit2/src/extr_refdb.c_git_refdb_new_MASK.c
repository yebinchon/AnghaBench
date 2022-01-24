#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_repository ;
struct TYPE_6__ {int /*<<< orphan*/ * repo; } ;
typedef  TYPE_1__ git_refdb ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_1__* FUNC3 (int,int) ; 

int FUNC4(git_refdb **out, git_repository *repo)
{
	git_refdb *db;

	FUNC2(out && repo);

	db = FUNC3(1, sizeof(*db));
	FUNC0(db);

	db->repo = repo;

	*out = db;
	FUNC1(db);
	return 0;
}
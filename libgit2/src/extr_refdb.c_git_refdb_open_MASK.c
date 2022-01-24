#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_refdb_backend ;
struct TYPE_5__ {int /*<<< orphan*/ * backend; int /*<<< orphan*/ * repo; } ;
typedef  TYPE_1__ git_refdb ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__**,int /*<<< orphan*/ *) ; 

int FUNC4(git_refdb **out, git_repository *repo)
{
	git_refdb *db;
	git_refdb_backend *dir;

	FUNC0(out && repo);

	*out = NULL;

	if (FUNC3(&db, repo) < 0)
		return -1;

	/* Add the default (filesystem) backend */
	if (FUNC1(&dir, repo) < 0) {
		FUNC2(db);
		return -1;
	}

	db->repo = repo;
	db->backend = dir;

	*out = db;
	return 0;
}
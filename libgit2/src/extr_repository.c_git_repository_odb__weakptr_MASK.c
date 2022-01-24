#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/ * _odb; } ;
typedef  TYPE_1__ git_repository ;
typedef  int /*<<< orphan*/  git_odb ;
struct TYPE_10__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_2__ git_buf ;

/* Variables and functions */
 TYPE_2__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_ODB_CAP_FROM_OWNER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  GIT_REPOSITORY_ITEM_OBJECTS ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ **) ; 
 int FUNC8 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ) ; 

int FUNC9(git_odb **out, git_repository *repo)
{
	int error = 0;

	FUNC1(repo && out);

	if (repo->_odb == NULL) {
		git_buf odb_path = GIT_BUF_INIT;
		git_odb *odb;

		if ((error = FUNC8(&odb_path, repo,
				GIT_REPOSITORY_ITEM_OBJECTS)) < 0 ||
			(error = FUNC7(&odb)) < 0)
			return error;

		FUNC0(odb, repo);

		if ((error = FUNC5(odb, GIT_ODB_CAP_FROM_OWNER)) < 0 ||
			(error = FUNC4(odb, odb_path.ptr, 0, 0)) < 0) {
			FUNC6(odb);
			return error;
		}

		odb = FUNC2(&repo->_odb, NULL, odb);
		if (odb != NULL) {
			FUNC0(odb, NULL);
			FUNC6(odb);
		}

		FUNC3(&odb_path);
	}

	*out = repo->_odb;
	return error;
}
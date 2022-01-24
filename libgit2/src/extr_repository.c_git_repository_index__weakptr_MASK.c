#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/ * _index; int /*<<< orphan*/  gitdir; } ;
typedef  TYPE_1__ git_repository ;
typedef  int /*<<< orphan*/  git_index ;
struct TYPE_9__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_2__ git_buf ;

/* Variables and functions */
 TYPE_2__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_INDEX_CAPABILITY_FROM_OWNER ; 
 int /*<<< orphan*/  GIT_INDEX_FILE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC8(git_index **out, git_repository *repo)
{
	int error = 0;

	FUNC1(out && repo);

	if (repo->_index == NULL) {
		git_buf index_path = GIT_BUF_INIT;
		git_index *index;

		if ((error = FUNC4(&index_path, repo->gitdir, GIT_INDEX_FILE)) < 0)
			return error;

		error = FUNC6(&index, index_path.ptr);
		if (!error) {
			FUNC0(index, repo);

			index = FUNC2(&repo->_index, NULL, index);
			if (index != NULL) {
				FUNC0(index, NULL);
				FUNC5(index);
			}

			error = FUNC7(repo->_index,
			                           GIT_INDEX_CAPABILITY_FROM_OWNER);
		}

		FUNC3(&index_path);
	}

	*out = repo->_index;
	return error;
}
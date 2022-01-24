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
typedef  int /*<<< orphan*/  git_index ;
struct TYPE_6__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int GIT_ENOTFOUND ; 
 int /*<<< orphan*/  GIT_ERROR_SUBMODULE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_1__*) ; 
 int FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(bool *occupied, git_repository *repo, const char *path)
{
	int error = 0;
	git_index *index;
	git_buf dir = GIT_BUF_INIT;
	*occupied = false;

	if ((error = FUNC6(&index, repo)) < 0)
		goto out;

	if ((error = FUNC3(NULL, index, path)) != GIT_ENOTFOUND) {
		if (!error) {
			FUNC2(GIT_ERROR_SUBMODULE,
				"File '%s' already exists in the index", path);
			*occupied = true;
		}
		goto out;
	}

	if ((error = FUNC1(&dir, path)) < 0)
		goto out;

	if ((error = FUNC5(&dir)) < 0)
		goto out;

	if ((error = FUNC4(NULL, index, dir.ptr)) != GIT_ENOTFOUND) {
		if (!error) {
			FUNC2(GIT_ERROR_SUBMODULE,
				"Directory '%s' already exists in the index", path);
			*occupied = true;
		}
		goto out;
	}

	error = 0;

out:
	FUNC0(&dir);
	return error;
}
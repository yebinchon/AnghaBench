#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * repo; } ;
typedef  TYPE_1__ refdb_fs_backend ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_filebuf ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 int GIT_EINVALIDSPEC ; 
 int /*<<< orphan*/  GIT_ERROR_INVALID ; 
 int /*<<< orphan*/  GIT_PATH_REJECT_FILESYSTEM_DEFAULTS ; 
 int /*<<< orphan*/  GIT_REFLOG_FILE_MODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static int FUNC7(git_filebuf *file, refdb_fs_backend *backend, const char *refname)
{
	git_repository *repo;
	git_buf log_path = GIT_BUF_INIT;
	int error;

	repo = backend->repo;

	if (!FUNC5(backend->repo, refname, 0, GIT_PATH_REJECT_FILESYSTEM_DEFAULTS)) {
		FUNC2(GIT_ERROR_INVALID, "invalid reference name '%s'", refname);
		return GIT_EINVALIDSPEC;
	}

	if (FUNC6(&log_path, repo, refname) < 0)
		return -1;

	if (!FUNC4(FUNC0(&log_path))) {
		FUNC2(GIT_ERROR_INVALID,
			"log file for reference '%s' doesn't exist", refname);
		error = -1;
		goto cleanup;
	}

	error = FUNC3(file, FUNC0(&log_path), 0, GIT_REFLOG_FILE_MODE);

cleanup:
	FUNC1(&log_path);

	return error;
}
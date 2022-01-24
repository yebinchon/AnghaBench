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
struct TYPE_3__ {int /*<<< orphan*/  commonpath; } ;
typedef  TYPE_1__ refdb_fs_backend ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 int GIT_RMDIR_EMPTY_PARENTS ; 
 int GIT_RMDIR_SKIP_ROOT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC7 (char const*,int /*<<< orphan*/ ,int) ; 
 size_t FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 size_t FUNC10 (char*) ; 

__attribute__((used)) static void FUNC11(
	refdb_fs_backend *backend,
	const char *ref_name,
	const char *prefix)
{
	git_buf relative_path = GIT_BUF_INIT;
	git_buf base_path = GIT_BUF_INIT;
	size_t commonlen;

	FUNC0(backend && ref_name);

	if (FUNC5(&relative_path, ref_name) < 0)
		goto cleanup;

	FUNC9(&relative_path);
	if ((commonlen = FUNC8("refs/heads/", FUNC1(&relative_path))) == FUNC10("refs/heads/") ||
		(commonlen = FUNC8("refs/tags/", FUNC1(&relative_path))) == FUNC10("refs/tags/") ||
		(commonlen = FUNC8("refs/remotes/", FUNC1(&relative_path))) == FUNC10("refs/remotes/")) {

		FUNC6(&relative_path, commonlen);

		if (prefix) {
			if (FUNC3(&base_path, '/', backend->commonpath, prefix, FUNC1(&relative_path)) < 0)
				goto cleanup;
		} else {
			if (FUNC4(&base_path, backend->commonpath, FUNC1(&relative_path)) < 0)
				goto cleanup;
		}

		FUNC7(ref_name + commonlen, FUNC1(&base_path), GIT_RMDIR_EMPTY_PARENTS | GIT_RMDIR_SKIP_ROOT);
	}

cleanup:
	FUNC2(&relative_path);
	FUNC2(&base_path);
}
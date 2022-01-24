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
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_odb ;
typedef  int /*<<< orphan*/  git_index ;
struct TYPE_7__ {char* ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int GIT_ENOTFOUND ; 
 int GIT_ERROR ; 
 int /*<<< orphan*/  GIT_ERROR_INVALID ; 
 char GIT_PATH_LIST_SEPARATOR ; 
 unsigned int GIT_REPOSITORY_OPEN_CROSS_FS ; 
 unsigned int GIT_REPOSITORY_OPEN_NO_DOTGIT ; 
 unsigned int GIT_REPOSITORY_OPEN_NO_SEARCH ; 
 int FUNC0 (TYPE_1__*,char*) ; 
 char* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*) ; 
 int FUNC4 (int*,char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ **,char*) ; 
 int FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ **,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ **,char const*,unsigned int,char const*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC16 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC18(
	git_repository **out,
	const char *start_path)
{
	git_repository *repo = NULL;
	git_index *index = NULL;
	git_odb *odb = NULL;
	git_buf dir_buf = GIT_BUF_INIT;
	git_buf ceiling_dirs_buf = GIT_BUF_INIT;
	git_buf across_fs_buf = GIT_BUF_INIT;
	git_buf index_file_buf = GIT_BUF_INIT;
	git_buf namespace_buf = GIT_BUF_INIT;
	git_buf object_dir_buf = GIT_BUF_INIT;
	git_buf alts_buf = GIT_BUF_INIT;
	git_buf work_tree_buf = GIT_BUF_INIT;
	git_buf common_dir_buf = GIT_BUF_INIT;
	const char *ceiling_dirs = NULL;
	unsigned flags = 0;
	int error;

	if (!start_path) {
		error = FUNC0(&dir_buf, "GIT_DIR");
		if (error == GIT_ENOTFOUND) {
			FUNC5();
			start_path = ".";
		} else if (error < 0)
			goto error;
		else {
			start_path = FUNC1(&dir_buf);
			flags |= GIT_REPOSITORY_OPEN_NO_SEARCH;
			flags |= GIT_REPOSITORY_OPEN_NO_DOTGIT;
		}
	}

	error = FUNC0(&ceiling_dirs_buf, "GIT_CEILING_DIRECTORIES");
	if (error == GIT_ENOTFOUND)
		FUNC5();
	else if (error < 0)
		goto error;
	else
		ceiling_dirs = FUNC1(&ceiling_dirs_buf);

	error = FUNC0(&across_fs_buf, "GIT_DISCOVERY_ACROSS_FILESYSTEM");
	if (error == GIT_ENOTFOUND)
		FUNC5();
	else if (error < 0)
		goto error;
	else {
		int across_fs = 0;
		error = FUNC4(&across_fs, FUNC1(&across_fs_buf));
		if (error < 0)
			goto error;
		if (across_fs)
			flags |= GIT_REPOSITORY_OPEN_CROSS_FS;
	}

	error = FUNC0(&index_file_buf, "GIT_INDEX_FILE");
	if (error == GIT_ENOTFOUND)
		FUNC5();
	else if (error < 0)
		goto error;
	else {
		error = FUNC8(&index, FUNC1(&index_file_buf));
		if (error < 0)
			goto error;
	}

	error = FUNC0(&namespace_buf, "GIT_NAMESPACE");
	if (error == GIT_ENOTFOUND)
		FUNC5();
	else if (error < 0)
		goto error;

	error = FUNC0(&object_dir_buf, "GIT_OBJECT_DIRECTORY");
	if (error == GIT_ENOTFOUND)
		FUNC5();
	else if (error < 0)
		goto error;
	else {
		error = FUNC11(&odb, FUNC1(&object_dir_buf));
		if (error < 0)
			goto error;
	}

	error = FUNC0(&work_tree_buf, "GIT_WORK_TREE");
	if (error == GIT_ENOTFOUND)
		FUNC5();
	else if (error < 0)
		goto error;
	else {
		FUNC6(GIT_ERROR_INVALID, "GIT_WORK_TREE unimplemented");
		error = GIT_ERROR;
		goto error;
	}

	error = FUNC0(&work_tree_buf, "GIT_COMMON_DIR");
	if (error == GIT_ENOTFOUND)
		FUNC5();
	else if (error < 0)
		goto error;
	else {
		FUNC6(GIT_ERROR_INVALID, "GIT_COMMON_DIR unimplemented");
		error = GIT_ERROR;
		goto error;
	}

	error = FUNC14(&repo, start_path, flags, ceiling_dirs);
	if (error < 0)
		goto error;

	if (odb)
		FUNC17(repo, odb);

	error = FUNC0(&alts_buf, "GIT_ALTERNATE_OBJECT_DIRECTORIES");
	if (error == GIT_ENOTFOUND) {
		FUNC5();
		error = 0;
	} else if (error < 0)
		goto error;
        else {
		const char *end;
		char *alt, *sep;
		if (!odb) {
			error = FUNC13(&odb, repo);
			if (error < 0)
				goto error;
		}

		end = FUNC1(&alts_buf) + FUNC3(&alts_buf);
		for (sep = alt = alts_buf.ptr; sep != end; alt = sep+1) {
			for (sep = alt; *sep && *sep != GIT_PATH_LIST_SEPARATOR; sep++)
				;
			if (*sep)
				*sep = '\0';
			error = FUNC9(odb, alt);
			if (error < 0)
				goto error;
		}
	}

	if (FUNC3(&namespace_buf)) {
		error = FUNC16(repo, FUNC1(&namespace_buf));
		if (error < 0)
			goto error;
	}

	FUNC15(repo, index);

	if (out) {
		*out = repo;
		goto success;
	}
error:
	FUNC12(repo);
success:
	FUNC10(odb);
	FUNC7(index);
	FUNC2(&common_dir_buf);
	FUNC2(&work_tree_buf);
	FUNC2(&alts_buf);
	FUNC2(&object_dir_buf);
	FUNC2(&namespace_buf);
	FUNC2(&index_file_buf);
	FUNC2(&across_fs_buf);
	FUNC2(&ceiling_dirs_buf);
	FUNC2(&dir_buf);
	return error;
}
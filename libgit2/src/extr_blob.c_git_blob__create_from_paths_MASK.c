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
struct stat {scalar_t__ st_mode; scalar_t__ st_size; } ;
typedef  int /*<<< orphan*/  st ;
typedef  scalar_t__ mode_t ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  scalar_t__ git_off_t ;
typedef  int /*<<< orphan*/  git_odb ;
typedef  int /*<<< orphan*/  git_filter_list ;
struct TYPE_5__ {char* ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int GIT_EBAREREPO ; 
 int GIT_EDIRECTORY ; 
 int /*<<< orphan*/  GIT_ERROR_ODB ; 
 int /*<<< orphan*/  GIT_FILTER_DEFAULT ; 
 int /*<<< orphan*/  GIT_FILTER_TO_ODB ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (char const*,struct stat*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int FUNC11 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct stat*,struct stat*,int) ; 
 int FUNC14 (int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,scalar_t__) ; 
 int FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,size_t) ; 

int FUNC17(
	git_oid *id,
	struct stat *out_st,
	git_repository *repo,
	const char *content_path,
	const char *hint_path,
	mode_t hint_mode,
	bool try_load_filters)
{
	int error;
	struct stat st;
	git_odb *odb = NULL;
	git_off_t size;
	mode_t mode;
	git_buf path = GIT_BUF_INIT;

	FUNC2(hint_path || !try_load_filters);

	if (!content_path) {
		if (FUNC10(repo, "create blob from file") < 0)
			return GIT_EBAREREPO;

		if (FUNC4(
				&path, FUNC12(repo), hint_path) < 0)
			return -1;

		content_path = path.ptr;
	}

	if ((error = FUNC9(content_path, &st)) < 0 ||
		(error = FUNC11(&odb, repo)) < 0)
		goto done;

	if (FUNC0(st.st_mode)) {
		FUNC5(GIT_ERROR_ODB, "cannot create blob from '%s': it is a directory", content_path);
		error = GIT_EDIRECTORY;
		goto done;
	}

	if (out_st)
		FUNC13(out_st, &st, sizeof(st));

	size = st.st_size;
	mode = hint_mode ? hint_mode : st.st_mode;

	if (FUNC1(mode)) {
		error = FUNC16(id, odb, content_path, (size_t)size);
	} else {
		git_filter_list *fl = NULL;

		if (try_load_filters)
			/* Load the filters for writing this file to the ODB */
			error = FUNC7(
				&fl, repo, NULL, hint_path,
				GIT_FILTER_TO_ODB, GIT_FILTER_DEFAULT);

		if (error < 0)
			/* well, that didn't work */;
		else if (fl == NULL)
			/* No filters need to be applied to the document: we can stream
			 * directly from disk */
			error = FUNC15(id, odb, content_path, size);
		else {
			/* We need to apply one or more filters */
			error = FUNC14(id, &size, odb, content_path, fl);

			FUNC6(fl);
		}

		/*
		 * TODO: eventually support streaming filtered files, for files
		 * which are bigger than a given threshold. This is not a priority
		 * because applying a filter in streaming mode changes the final
		 * size of the blob, and without knowing its final size, the blob
		 * cannot be written in stream mode to the ODB.
		 *
		 * The plan is to do streaming writes to a tempfile on disk and then
		 * opening streaming that file to the ODB, using
		 * `write_file_stream`.
		 *
		 * CAREFULLY DESIGNED APIS YO
		 */
	}

done:
	FUNC8(odb);
	FUNC3(&path);

	return error;
}
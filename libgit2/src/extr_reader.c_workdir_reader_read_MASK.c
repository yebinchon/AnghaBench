#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ index; int /*<<< orphan*/  repo; } ;
typedef  TYPE_1__ workdir_reader ;
struct stat {int /*<<< orphan*/  st_mode; } ;
typedef  int /*<<< orphan*/  git_reader ;
typedef  int /*<<< orphan*/  git_oid ;
struct TYPE_11__ {scalar_t__ mode; int /*<<< orphan*/  id; } ;
typedef  TYPE_2__ git_index_entry ;
typedef  int /*<<< orphan*/  git_filter_list ;
typedef  scalar_t__ git_filemode_t ;
struct TYPE_12__ {int /*<<< orphan*/  size; int /*<<< orphan*/  ptr; } ;
typedef  TYPE_3__ git_buf ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 TYPE_3__ GIT_BUF_INIT ; 
 int GIT_ENOTFOUND ; 
 int /*<<< orphan*/  GIT_ERROR_OS ; 
 int /*<<< orphan*/  GIT_FILTER_DEFAULT ; 
 int /*<<< orphan*/  GIT_FILTER_TO_ODB ; 
 int /*<<< orphan*/  GIT_OBJECT_BLOB ; 
 int GIT_READER_MISMATCH ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC7 (scalar_t__,char const*,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ,struct stat*) ; 

__attribute__((used)) static int FUNC13(
	git_buf *out,
	git_oid *out_id,
	git_filemode_t *out_filemode,
	git_reader *_reader,
	const char *filename)
{
	workdir_reader *reader = (workdir_reader *)_reader;
	git_buf path = GIT_BUF_INIT;
	struct stat st;
	git_filemode_t filemode;
	git_filter_list *filters = NULL;
	const git_index_entry *idx_entry;
	git_oid id;
	int error;

	if ((error = FUNC1(&path,
		FUNC11(reader->repo), filename)) < 0)
		goto done;

	if ((error = FUNC12(path.ptr, &st)) < 0) {
		if (error == -1 && errno == ENOENT)
			error = GIT_ENOTFOUND;

		FUNC2(GIT_ERROR_OS, "could not stat '%s'", path.ptr);
		goto done;
	}

	filemode = FUNC6(st.st_mode);

	/*
	 * Patch application - for example - uses the filtered version of
	 * the working directory data to match git.  So we will run the
	 * workdir -> ODB filter on the contents in this workdir reader.
	 */
	if ((error = FUNC5(&filters, reader->repo, NULL, filename,
		GIT_FILTER_TO_ODB, GIT_FILTER_DEFAULT)) < 0)
		goto done;

	if ((error = FUNC3(out,
	    filters, reader->repo, path.ptr)) < 0)
		goto done;

	if (out_id || reader->index) {
		if ((error = FUNC8(&id, out->ptr, out->size, GIT_OBJECT_BLOB)) < 0)
			goto done;
	}

	if (reader->index) {
		if (!(idx_entry = FUNC7(reader->index, filename, 0)) ||
		    filemode != idx_entry->mode ||
		    !FUNC10(&id, &idx_entry->id)) {
			error = GIT_READER_MISMATCH;
			goto done;
		}
	}

	if (out_id)
		FUNC9(out_id, &id);

	if (out_filemode)
		*out_filemode = filemode;

done:
	FUNC4(filters);
	FUNC0(&path);
	return error;
}
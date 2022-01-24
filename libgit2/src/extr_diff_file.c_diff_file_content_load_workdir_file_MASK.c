#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_filter_list ;
typedef  scalar_t__ git_file ;
struct TYPE_17__ {int flags; } ;
typedef  TYPE_2__ git_diff_options ;
struct TYPE_20__ {scalar_t__ data; int /*<<< orphan*/  len; } ;
struct TYPE_18__ {int /*<<< orphan*/  flags; TYPE_6__ map; TYPE_1__* file; int /*<<< orphan*/  repo; } ;
typedef  TYPE_3__ git_diff_file_content ;
struct TYPE_19__ {scalar_t__ ptr; int /*<<< orphan*/  size; } ;
typedef  TYPE_4__ git_buf ;
struct TYPE_16__ {scalar_t__ size; int /*<<< orphan*/  path; } ;

/* Variables and functions */
 TYPE_4__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_DIFF_FLAG__FREE_DATA ; 
 int /*<<< orphan*/  GIT_DIFF_FLAG__UNMAP_DATA ; 
 int GIT_DIFF_SHOW_BINARY ; 
 int /*<<< orphan*/  GIT_FILTER_ALLOW_UNSAFE ; 
 int /*<<< orphan*/  GIT_FILTER_TO_ODB ; 
 scalar_t__ FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (TYPE_4__*,int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int FUNC8 (TYPE_6__*,scalar_t__,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (TYPE_4__*,scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 

__attribute__((used)) static int FUNC12(
	git_diff_file_content *fc,
	git_buf *path,
	git_diff_options *diff_opts)
{
	int error = 0;
	git_filter_list *fl = NULL;
	git_file fd = FUNC9(FUNC1(path));
	git_buf raw = GIT_BUF_INIT;

	if (fd < 0)
		return fd;

	if (!fc->file->size &&
		!(fc->file->size = FUNC7(fd)))
		goto cleanup;

	if ((diff_opts->flags & GIT_DIFF_SHOW_BINARY) == 0 &&
		FUNC0(fc))
		goto cleanup;

	if ((error = FUNC6(
			&fl, fc->repo, NULL, fc->file->path,
			GIT_FILTER_TO_ODB, GIT_FILTER_ALLOW_UNSAFE)) < 0)
		goto cleanup;

	/* if there are no filters, try to mmap the file */
	if (fl == NULL) {
		if (!(error = FUNC8(
				&fc->map, fd, 0, (size_t)fc->file->size))) {
			fc->flags |= GIT_DIFF_FLAG__UNMAP_DATA;
			goto cleanup;
		}

		/* if mmap failed, fall through to try readbuffer below */
		FUNC3();
	}

	if (!(error = FUNC10(&raw, fd, (size_t)fc->file->size))) {
		git_buf out = GIT_BUF_INIT;

		error = FUNC4(&out, fl, &raw);

		if (out.ptr != raw.ptr)
			FUNC2(&raw);

		if (!error) {
			fc->map.len  = out.size;
			fc->map.data = out.ptr;
			fc->flags |= GIT_DIFF_FLAG__FREE_DATA;
		}
	}

cleanup:
	FUNC5(fl);
	FUNC11(fd);

	return error;
}
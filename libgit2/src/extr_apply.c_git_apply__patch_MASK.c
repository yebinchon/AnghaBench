#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ size; } ;
struct TYPE_12__ {TYPE_2__* delta; TYPE_1__ hunks; } ;
typedef  TYPE_3__ git_patch ;
struct TYPE_13__ {int mode; int /*<<< orphan*/  path; } ;
typedef  TYPE_4__ git_diff_file ;
typedef  int /*<<< orphan*/  git_buf ;
typedef  int /*<<< orphan*/  git_apply_options ;
struct TYPE_14__ {int /*<<< orphan*/  opts; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_5__ apply_hunks_ctx ;
struct TYPE_11__ {scalar_t__ status; int flags; TYPE_4__ new_file; } ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_APPLY_OPTIONS_INIT ; 
 scalar_t__ GIT_DELTA_DELETED ; 
 int GIT_DIFF_FLAG_BINARY ; 
 unsigned int GIT_FILEMODE_BLOB ; 
 int FUNC0 (int /*<<< orphan*/ *,char const*,size_t,TYPE_3__*) ; 
 int FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const*,size_t,TYPE_3__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 

int FUNC9(
	git_buf *contents_out,
	char **filename_out,
	unsigned int *mode_out,
	const char *source,
	size_t source_len,
	git_patch *patch,
	const git_apply_options *given_opts)
{
	apply_hunks_ctx ctx = { GIT_APPLY_OPTIONS_INIT };
	char *filename = NULL;
	unsigned int mode = 0;
	int error = 0;

	FUNC3(contents_out && filename_out && mode_out && (source || !source_len) && patch);

	if (given_opts)
		FUNC8(&ctx.opts, given_opts, sizeof(git_apply_options));

	*filename_out = NULL;
	*mode_out = 0;

	if (patch->delta->status != GIT_DELTA_DELETED) {
		const git_diff_file *newfile = &patch->delta->new_file;

		filename = FUNC5(newfile->path);
		mode = newfile->mode ?
			newfile->mode : GIT_FILEMODE_BLOB;
	}

	if (patch->delta->flags & GIT_DIFF_FLAG_BINARY)
		error = FUNC0(contents_out, source, source_len, patch);
	else if (patch->hunks.size)
		error = FUNC2(contents_out, source, source_len, patch, &ctx);
	else
		error = FUNC7(contents_out, source, source_len);

	if (error)
		goto done;

	if (patch->delta->status == GIT_DELTA_DELETED &&
		FUNC6(contents_out) > 0) {
		error = FUNC1("removal patch leaves file contents");
		goto done;
	}

	*filename_out = filename;
	*mode_out = mode;

done:
	if (error < 0)
		FUNC4(filename);

	return error;
}
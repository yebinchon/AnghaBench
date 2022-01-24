#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_diff_options ;
struct TYPE_8__ {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct TYPE_10__ {TYPE_2__* file; TYPE_1__ map; int /*<<< orphan*/  repo; } ;
typedef  TYPE_3__ git_diff_file_content ;
typedef  int /*<<< orphan*/  git_buf ;
struct TYPE_9__ {scalar_t__ mode; int flags; int /*<<< orphan*/  id; int /*<<< orphan*/  path; } ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 int GIT_DIFF_FLAG_VALID_ID ; 
 scalar_t__ GIT_FILEMODE_COMMIT ; 
 scalar_t__ GIT_FILEMODE_TREE ; 
 int /*<<< orphan*/  GIT_OBJECT_BLOB ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (TYPE_3__*,int) ; 
 int FUNC2 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(
	git_diff_file_content *fc,
	git_diff_options *diff_opts)
{
	int error = 0;
	git_buf path = GIT_BUF_INIT;

	if (fc->file->mode == GIT_FILEMODE_COMMIT)
		return FUNC1(fc, true);

	if (fc->file->mode == GIT_FILEMODE_TREE)
		return 0;

	if (FUNC5(
			&path, FUNC7(fc->repo), fc->file->path) < 0)
		return -1;

	if (FUNC0(fc->file->mode))
		error = FUNC3(fc, &path);
	else
		error = FUNC2(fc, &path, diff_opts);

	/* once data is loaded, update OID if we didn't have it previously */
	if (!error && (fc->file->flags & GIT_DIFF_FLAG_VALID_ID) == 0) {
		error = FUNC6(
			&fc->file->id, fc->map.data, fc->map.len, GIT_OBJECT_BLOB);
		fc->file->flags |= GIT_DIFF_FLAG_VALID_ID;
	}

	FUNC4(&path);
	return error;
}
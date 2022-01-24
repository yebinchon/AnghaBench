#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_odb_object ;
typedef  int /*<<< orphan*/  git_object ;
struct TYPE_10__ {int flags; } ;
typedef  TYPE_2__ git_diff_options ;
struct TYPE_9__ {size_t len; void* data; } ;
struct TYPE_11__ {int /*<<< orphan*/  blob; TYPE_1__ map; int /*<<< orphan*/  flags; TYPE_4__* file; int /*<<< orphan*/  repo; } ;
typedef  TYPE_3__ git_diff_file_content ;
typedef  int /*<<< orphan*/  git_blob ;
struct TYPE_12__ {scalar_t__ mode; int /*<<< orphan*/  id; int /*<<< orphan*/  size; } ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_DIFF_FLAG__FREE_BLOB ; 
 int GIT_DIFF_SHOW_BINARY ; 
 scalar_t__ GIT_FILEMODE_COMMIT ; 
 int /*<<< orphan*/  GIT_OBJECT_BLOB ; 
 scalar_t__ FUNC0 (TYPE_3__*) ; 
 int FUNC1 (TYPE_3__*,int) ; 
 int FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_4__*,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(
	git_diff_file_content *fc,
	git_diff_options *opts)
{
	int error = 0;
	git_odb_object *odb_obj = NULL;

	if (FUNC8(&fc->file->id))
		return 0;

	if (fc->file->mode == GIT_FILEMODE_COMMIT)
		return FUNC1(fc, false);

	/* if we don't know size, try to peek at object header first */
	if (!fc->file->size) {
		if ((error = FUNC5(
				fc->file, &odb_obj, fc->repo)) < 0)
			return error;
	}

	if ((opts->flags & GIT_DIFF_SHOW_BINARY) == 0 &&
		FUNC0(fc))
		return 0;

	if (odb_obj != NULL) {
		error = FUNC6(
			(git_object **)&fc->blob, fc->repo, odb_obj, GIT_OBJECT_BLOB);
		FUNC7(odb_obj);
	} else {
		error = FUNC2(
			(git_blob **)&fc->blob, fc->repo, &fc->file->id);
	}

	if (!error) {
		fc->flags |= GIT_DIFF_FLAG__FREE_BLOB;
		fc->map.data = (void *)FUNC3(fc->blob);
		fc->map.len  = (size_t)FUNC4(fc->blob);
	}

	return error;
}
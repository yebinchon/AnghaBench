#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct rename_conflict_info {struct rename* ren1; } ;
struct rename {scalar_t__ branch; int /*<<< orphan*/  dir_rename_original_dest; TYPE_1__* pair; } ;
struct merge_options {scalar_t__ detect_directory_renames; scalar_t__ branch1; TYPE_2__* priv; } ;
struct diff_filespec {char* path; } ;
struct TYPE_4__ {int /*<<< orphan*/  call_depth; } ;
struct TYPE_3__ {struct diff_filespec* two; } ;

/* Variables and functions */
 scalar_t__ MERGE_DIRECTORY_RENAMES_CONFLICT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct merge_options*,int,int /*<<< orphan*/ ,char*,char*) ; 
 char* FUNC4 (struct merge_options*,char*,scalar_t__) ; 
 scalar_t__ FUNC5 (struct merge_options*,int,struct diff_filespec const*,char*) ; 
 scalar_t__ FUNC6 (struct merge_options*,char*,int /*<<< orphan*/ *,struct diff_filespec const*,struct diff_filespec const*) ; 
 scalar_t__ FUNC7 (struct merge_options*,char*) ; 

__attribute__((used)) static int FUNC8(struct merge_options *opt,
				 struct rename_conflict_info *ci)
{
	/*
	 * Handle file adds that need to be renamed due to directory rename
	 * detection.  This differs from handle_rename_normal, because
	 * there is no content merge to do; just move the file into the
	 * desired final location.
	 */
	const struct rename *ren = ci->ren1;
	const struct diff_filespec *dest = ren->pair->two;
	char *file_path = dest->path;
	int mark_conflicted = (opt->detect_directory_renames ==
			       MERGE_DIRECTORY_RENAMES_CONFLICT);
	FUNC1(ren->dir_rename_original_dest);

	if (!opt->priv->call_depth && FUNC7(opt, dest->path)) {
		mark_conflicted = 1;
		file_path = FUNC4(opt, dest->path, ren->branch);
		FUNC3(opt, 1, FUNC0("Error: Refusing to lose untracked file at %s; "
				 "writing to %s instead."),
		       dest->path, file_path);
	}

	if (mark_conflicted) {
		/*
		 * Write the file in worktree at file_path.  In the index,
		 * only record the file at dest->path in the appropriate
		 * higher stage.
		 */
		if (FUNC5(opt, 0, dest, file_path))
			return -1;
		if (file_path != dest->path)
			FUNC2(file_path);
		if (FUNC6(opt, dest->path, NULL,
				  ren->branch == opt->branch1 ? dest : NULL,
				  ren->branch == opt->branch1 ? NULL : dest))
			return -1;
		return 0; /* not clean, but conflicted */
	} else {
		/* Update dest->path both in index and in worktree */
		if (FUNC5(opt, 1, dest, dest->path))
			return -1;
		return 1; /* clean */
	}
}
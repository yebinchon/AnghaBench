#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct rename_conflict_info {struct rename* ren1; } ;
struct rename {scalar_t__ branch; scalar_t__ dir_rename_original_dest; } ;
struct merge_options {scalar_t__ branch1; scalar_t__ detect_directory_renames; } ;
struct merge_file_info {int /*<<< orphan*/  blob; } ;
struct diff_filespec {int dummy; } ;

/* Variables and functions */
 scalar_t__ MERGE_DIRECTORY_RENAMES_CONFLICT ; 
 int FUNC0 (struct merge_file_info*,struct merge_options*,char const*,int /*<<< orphan*/ ,struct diff_filespec const*,struct diff_filespec const*,struct diff_filespec const*,struct rename_conflict_info*) ; 
 scalar_t__ FUNC1 (struct merge_options*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct merge_options*,char const*) ; 

__attribute__((used)) static int FUNC3(struct merge_options *opt,
				const char *path,
				const struct diff_filespec *o,
				const struct diff_filespec *a,
				const struct diff_filespec *b,
				struct rename_conflict_info *ci)
{
	struct rename *ren = ci->ren1;
	struct merge_file_info mfi;
	int clean;
	int side = (ren->branch == opt->branch1 ? 2 : 3);

	/* Merge the content and write it out */
	clean = FUNC0(&mfi, opt, path, FUNC2(opt, path),
				     o, a, b, ci);

	if (clean &&
	    opt->detect_directory_renames == MERGE_DIRECTORY_RENAMES_CONFLICT &&
	    ren->dir_rename_original_dest) {
		if (FUNC1(opt, path,
				  NULL,
				  side == 2 ? &mfi.blob : NULL,
				  side == 2 ? NULL : &mfi.blob))
			return -1;
		clean = 0; /* not clean, but conflicted */
	}
	return clean;
}
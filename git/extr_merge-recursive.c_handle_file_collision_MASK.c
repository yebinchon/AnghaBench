#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct merge_options {char const* branch1; TYPE_1__* priv; } ;
struct diff_filespec {char* path; scalar_t__ mode; int /*<<< orphan*/  oid; } ;
struct merge_file_info {int clean; struct diff_filespec blob; } ;
struct TYPE_2__ {int call_depth; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (struct merge_options*,struct diff_filespec*,struct diff_filespec*,struct diff_filespec*,char const*,char const*,char const*,int,struct merge_file_info*) ; 
 int /*<<< orphan*/  null_oid ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct merge_options*,int,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct merge_options*,int,char const*,int) ; 
 char* FUNC6 (struct merge_options*,char const*,char*) ; 
 scalar_t__ FUNC7 (struct merge_options*,int,struct diff_filespec*,char const*) ; 
 scalar_t__ FUNC8 (struct merge_options*,char const*,int /*<<< orphan*/ *,struct diff_filespec*,struct diff_filespec*) ; 
 scalar_t__ FUNC9 (struct merge_options*,char const*) ; 
 scalar_t__ FUNC10 (struct merge_options*,char const*) ; 

__attribute__((used)) static int FUNC11(struct merge_options *opt,
				 const char *collide_path,
				 const char *prev_path1,
				 const char *prev_path2,
				 const char *branch1, const char *branch2,
				 struct diff_filespec *a,
				 struct diff_filespec *b)
{
	struct merge_file_info mfi;
	struct diff_filespec null;
	char *alt_path = NULL;
	const char *update_path = collide_path;

	/*
	 * It's easiest to get the correct things into stage 2 and 3, and
	 * to make sure that the content merge puts HEAD before the other
	 * branch if we just ensure that branch1 == opt->branch1.  So, simply
	 * flip arguments around if we don't have that.
	 */
	if (branch1 != opt->branch1) {
		return FUNC11(opt, collide_path,
					     prev_path2, prev_path1,
					     branch2, branch1,
					     b, a);
	}

	/*
	 * In the recursive case, we just opt to undo renames
	 */
	if (opt->priv->call_depth && (prev_path1 || prev_path2)) {
		/* Put first file (a->oid, a->mode) in its original spot */
		if (prev_path1) {
			if (FUNC7(opt, 1, a, prev_path1))
				return -1;
		} else {
			if (FUNC7(opt, 1, a, collide_path))
				return -1;
		}

		/* Put second file (b->oid, b->mode) in its original spot */
		if (prev_path2) {
			if (FUNC7(opt, 1, b, prev_path2))
				return -1;
		} else {
			if (FUNC7(opt, 1, b, collide_path))
				return -1;
		}

		/* Don't leave something at collision path if unrenaming both */
		if (prev_path1 && prev_path2)
			FUNC5(opt, 1, collide_path, 0);

		return 0;
	}

	/* Remove rename sources if rename/add or rename/rename(2to1) */
	if (prev_path1)
		FUNC5(opt, 1, prev_path1,
			    opt->priv->call_depth || FUNC10(opt, prev_path1));
	if (prev_path2)
		FUNC5(opt, 1, prev_path2,
			    opt->priv->call_depth || FUNC10(opt, prev_path2));

	/*
	 * Remove the collision path, if it wouldn't cause dirty contents
	 * or an untracked file to get lost.  We'll either overwrite with
	 * merged contents, or just write out to differently named files.
	 */
	if (FUNC9(opt, collide_path)) {
		FUNC4(opt, 1, FUNC0("Refusing to lose dirty file at %s"),
		       collide_path);
		update_path = alt_path = FUNC6(opt, collide_path, "merged");
	} else if (FUNC10(opt, collide_path)) {
		/*
		 * Only way we get here is if both renames were from
		 * a directory rename AND user had an untracked file
		 * at the location where both files end up after the
		 * two directory renames.  See testcase 10d of t6043.
		 */
		FUNC4(opt, 1, FUNC0("Refusing to lose untracked file at "
			       "%s, even though it's in the way."),
		       collide_path);
		update_path = alt_path = FUNC6(opt, collide_path, "merged");
	} else {
		/*
		 * FIXME: It's possible that the two files are identical
		 * and that the current working copy happens to match, in
		 * which case we are unnecessarily touching the working
		 * tree file.  It's not a likely enough scenario that I
		 * want to code up the checks for it and a better fix is
		 * available if we restructure how unpack_trees() and
		 * merge-recursive interoperate anyway, so punting for
		 * now...
		 */
		FUNC5(opt, 0, collide_path, 0);
	}

	/* Store things in diff_filespecs for functions that need it */
	null.path = (char *)collide_path;
	FUNC3(&null.oid, &null_oid);
	null.mode = 0;

	if (FUNC2(opt, &null, a, b, collide_path,
				    branch1, branch2, opt->priv->call_depth * 2, &mfi))
		return -1;
	mfi.clean &= !alt_path;
	if (FUNC7(opt, mfi.clean, &mfi.blob, update_path))
		return -1;
	if (!mfi.clean && !opt->priv->call_depth &&
	    FUNC8(opt, collide_path, NULL, a, b))
		return -1;
	FUNC1(alt_path);
	/*
	 * FIXME: If both a & b both started with conflicts (only possible
	 * if they came from a rename/rename(2to1)), but had IDENTICAL
	 * contents including those conflicts, then in the next line we claim
	 * it was clean.  If someone cares about this case, we should have the
	 * caller notify us if we started with conflicts.
	 */
	return mfi.clean;
}
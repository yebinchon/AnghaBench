#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct rename_conflict_info {TYPE_5__* ren1; } ;
struct merge_options {TYPE_4__* repo; TYPE_3__* priv; int /*<<< orphan*/  branch2; int /*<<< orphan*/  branch1; } ;
struct diff_filespec {int /*<<< orphan*/  mode; scalar_t__ path; } ;
struct merge_file_info {int clean; struct diff_filespec const blob; } ;
struct cache_entry {int /*<<< orphan*/  ce_flags; } ;
struct TYPE_14__ {struct cache_entry** cache; } ;
struct TYPE_13__ {int /*<<< orphan*/  branch; TYPE_2__* pair; } ;
struct TYPE_12__ {TYPE_6__* index; } ;
struct TYPE_11__ {int call_depth; TYPE_6__ orig_index; } ;
struct TYPE_10__ {TYPE_1__* two; } ;
struct TYPE_9__ {int /*<<< orphan*/  mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  CE_SKIP_WORKTREE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (char*) ; 
 scalar_t__ FUNC2 (struct merge_options*,struct diff_filespec const*,char const*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (struct cache_entry*) ; 
 scalar_t__ FUNC5 (TYPE_6__*,char const*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 (TYPE_6__*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct diff_filespec const*) ; 
 scalar_t__ FUNC9 (struct merge_options*,struct diff_filespec const*,struct diff_filespec const*,struct diff_filespec const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct merge_file_info*) ; 
 int /*<<< orphan*/  FUNC10 (struct merge_options*,int,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_6__*,char const*) ; 
 int /*<<< orphan*/  FUNC12 (char const*) ; 
 char* FUNC13 (struct merge_options*,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (struct merge_options*,int,struct diff_filespec const*,char const*) ; 
 scalar_t__ FUNC15 (struct merge_options*,char const*,struct diff_filespec const*,struct diff_filespec const*,struct diff_filespec const*) ; 
 int FUNC16 (struct merge_options*,char const*) ; 
 scalar_t__ FUNC17 (struct merge_options*,char const*,struct diff_filespec const*) ; 

__attribute__((used)) static int FUNC18(struct merge_file_info *mfi,
				struct merge_options *opt,
				const char *path,
				int is_dirty,
				const struct diff_filespec *o,
				const struct diff_filespec *a,
				const struct diff_filespec *b,
				struct rename_conflict_info *ci)
{
	const char *reason = FUNC1("content");
	unsigned df_conflict_remains = 0;

	if (!FUNC8(o))
		reason = FUNC1("add/add");

	FUNC3(o->path && a->path && b->path);
	if (ci && FUNC5(opt->repo->index, path, !opt->priv->call_depth,
			     FUNC0(ci->ren1->pair->two->mode)))
		df_conflict_remains = 1;

	if (FUNC9(opt, o, a, b, path,
				    opt->branch1, opt->branch2,
				    opt->priv->call_depth * 2, mfi))
		return -1;

	/*
	 * We can skip updating the working tree file iff:
	 *   a) The merge is clean
	 *   b) The merge matches what was in HEAD (content, mode, pathname)
	 *   c) The target path is usable (i.e. not involved in D/F conflict)
	 */
	if (mfi->clean && FUNC17(opt, path, &mfi->blob) &&
	    !df_conflict_remains) {
		int pos;
		struct cache_entry *ce;

		FUNC10(opt, 3, FUNC1("Skipped %s (merged same as existing)"), path);
		if (FUNC2(opt, &mfi->blob, path,
				  0, (!opt->priv->call_depth && !is_dirty), 0))
			return -1;
		/*
		 * However, add_cacheinfo() will delete the old cache entry
		 * and add a new one.  We need to copy over any skip_worktree
		 * flag to avoid making the file appear as if it were
		 * deleted by the user.
		 */
		pos = FUNC7(&opt->priv->orig_index, path, FUNC12(path));
		ce = opt->priv->orig_index.cache[pos];
		if (FUNC4(ce)) {
			pos = FUNC7(opt->repo->index, path, FUNC12(path));
			ce = opt->repo->index->cache[pos];
			ce->ce_flags |= CE_SKIP_WORKTREE;
		}
		return mfi->clean;
	}

	if (!mfi->clean) {
		if (FUNC0(mfi->blob.mode))
			reason = FUNC1("submodule");
		FUNC10(opt, 1, FUNC1("CONFLICT (%s): Merge conflict in %s"),
				reason, path);
		if (ci && !df_conflict_remains)
			if (FUNC15(opt, path, o, a, b))
				return -1;
	}

	if (df_conflict_remains || is_dirty) {
		char *new_path;
		if (opt->priv->call_depth) {
			FUNC11(opt->repo->index, path);
		} else {
			if (!mfi->clean) {
				if (FUNC15(opt, path, o, a, b))
					return -1;
			} else {
				int file_from_stage2 = FUNC16(opt, path);

				if (FUNC15(opt, path, NULL,
						  file_from_stage2 ? &mfi->blob : NULL,
						  file_from_stage2 ? NULL : &mfi->blob))
					return -1;
			}

		}
		new_path = FUNC13(opt, path, ci->ren1->branch);
		if (is_dirty) {
			FUNC10(opt, 1, FUNC1("Refusing to lose dirty file at %s"),
			       path);
		}
		FUNC10(opt, 1, FUNC1("Adding as %s instead"), new_path);
		if (FUNC14(opt, 0, &mfi->blob, new_path)) {
			FUNC6(new_path);
			return -1;
		}
		FUNC6(new_path);
		mfi->clean = 0;
	} else if (FUNC14(opt, mfi->clean, &mfi->blob, path))
		return -1;
	return !is_dirty && mfi->clean;
}
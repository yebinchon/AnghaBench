#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct stage_data {int processed; struct rename_conflict_info* rename_conflict_info; struct diff_filespec* stages; } ;
struct rename_conflict_info {int rename_type; TYPE_6__* ren2; TYPE_6__* ren1; } ;
struct merge_options {int renormalize; scalar_t__ branch1; char* branch2; TYPE_2__* repo; TYPE_1__* priv; } ;
struct merge_file_info {int dummy; } ;
struct diff_filespec {char* path; int /*<<< orphan*/  mode; } ;
struct TYPE_12__ {scalar_t__ branch; TYPE_5__* pair; } ;
struct TYPE_11__ {TYPE_4__* two; TYPE_3__* one; } ;
struct TYPE_10__ {char* path; } ;
struct TYPE_9__ {char* path; } ;
struct TYPE_8__ {int /*<<< orphan*/  index; } ;
struct TYPE_7__ {scalar_t__ call_depth; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
#define  RENAME_ADD 134 
#define  RENAME_DELETE 133 
#define  RENAME_NORMAL 132 
#define  RENAME_ONE_FILE_TO_ONE 131 
#define  RENAME_ONE_FILE_TO_TWO 130 
#define  RENAME_TWO_FILES_TO_ONE 129 
#define  RENAME_VIA_DIR 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (struct merge_options*,struct diff_filespec*,struct diff_filespec*,int,char const*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 (struct merge_file_info*,struct merge_options*,char const*,int,struct diff_filespec*,struct diff_filespec*,struct diff_filespec*,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct merge_options*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char*,struct diff_filespec*,struct diff_filespec*) ; 
 scalar_t__ FUNC9 (struct merge_options*,char const*,struct diff_filespec*,struct diff_filespec*,struct diff_filespec*) ; 
 int FUNC10 (struct merge_options*,struct rename_conflict_info*) ; 
 int /*<<< orphan*/  FUNC11 (struct merge_options*,struct rename_conflict_info*) ; 
 int FUNC12 (struct merge_options*,char const*,struct diff_filespec*,struct diff_filespec*,struct diff_filespec*,struct rename_conflict_info*) ; 
 int /*<<< orphan*/  FUNC13 (struct merge_options*,struct rename_conflict_info*) ; 
 int FUNC14 (struct merge_options*,struct rename_conflict_info*) ; 
 int FUNC15 (struct merge_options*,struct rename_conflict_info*) ; 
 int FUNC16 (struct diff_filespec*) ; 
 int /*<<< orphan*/  FUNC17 (struct merge_options*,int,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC18 (struct merge_options*,int,char const*,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,char const*) ; 
 char* FUNC20 (struct merge_options*,char const*,char const*) ; 
 scalar_t__ FUNC21 (struct merge_options*,int /*<<< orphan*/ ,struct diff_filespec const*,char*) ; 
 scalar_t__ FUNC22 (struct merge_options*,struct diff_filespec const*,char const*,int,int) ; 
 int FUNC23 (struct merge_options*,TYPE_6__*) ; 

__attribute__((used)) static int FUNC24(struct merge_options *opt,
			 const char *path, struct stage_data *entry)
{
	int clean_merge = 1;
	int normalize = opt->renormalize;

	struct diff_filespec *o = &entry->stages[1];
	struct diff_filespec *a = &entry->stages[2];
	struct diff_filespec *b = &entry->stages[3];
	int o_valid = FUNC16(o);
	int a_valid = FUNC16(a);
	int b_valid = FUNC16(b);
	o->path = a->path = b->path = (char*)path;

	entry->processed = 1;
	if (entry->rename_conflict_info) {
		struct rename_conflict_info *ci = entry->rename_conflict_info;
		struct diff_filespec *temp;
		int path_clean;

		path_clean = FUNC23(opt, ci->ren1);
		path_clean &= FUNC23(opt, ci->ren2);

		/*
		 * For cases with a single rename, {o,a,b}->path have all been
		 * set to the rename target path; we need to set two of these
		 * back to the rename source.
		 * For rename/rename conflicts, we'll manually fix paths below.
		 */
		temp = (opt->branch1 == ci->ren1->branch) ? b : a;
		o->path = temp->path = ci->ren1->pair->one->path;
		if (ci->ren2) {
			FUNC3(opt->branch1 == ci->ren1->branch);
		}

		switch (ci->rename_type) {
		case RENAME_NORMAL:
		case RENAME_ONE_FILE_TO_ONE:
			clean_merge = FUNC12(opt, path, o, a, b,
							   ci);
			break;
		case RENAME_VIA_DIR:
			clean_merge = FUNC15(opt, ci);
			break;
		case RENAME_ADD:
			/*
			 * Probably unclean merge, but if the renamed file
			 * merges cleanly and the result can then be
			 * two-way merged cleanly with the added file, I
			 * guess it's a clean merge?
			 */
			clean_merge = FUNC10(opt, ci);
			break;
		case RENAME_DELETE:
			clean_merge = 0;
			if (FUNC11(opt, ci))
				clean_merge = -1;
			break;
		case RENAME_ONE_FILE_TO_TWO:
			/*
			 * Manually fix up paths; note:
			 * ren[12]->pair->one->path are equal.
			 */
			o->path = ci->ren1->pair->one->path;
			a->path = ci->ren1->pair->two->path;
			b->path = ci->ren2->pair->two->path;

			clean_merge = 0;
			if (FUNC13(opt, ci))
				clean_merge = -1;
			break;
		case RENAME_TWO_FILES_TO_ONE:
			/*
			 * Manually fix up paths; note,
			 * ren[12]->pair->two->path are actually equal.
			 */
			o->path = NULL;
			a->path = ci->ren1->pair->two->path;
			b->path = ci->ren2->pair->two->path;

			/*
			 * Probably unclean merge, but if the two renamed
			 * files merge cleanly and the two resulting files
			 * can then be two-way merged cleanly, I guess it's
			 * a clean merge?
			 */
			clean_merge = FUNC14(opt, ci);
			break;
		default:
			entry->processed = 0;
			break;
		}
		if (path_clean < clean_merge)
			clean_merge = path_clean;
	} else if (o_valid && (!a_valid || !b_valid)) {
		/* Case A: Deleted in one */
		if ((!a_valid && !b_valid) ||
		    (!b_valid && FUNC4(opt, o, a, normalize, path)) ||
		    (!a_valid && FUNC4(opt, o, b, normalize, path))) {
			/* Deleted in both or deleted in one and
			 * unchanged in the other */
			if (a_valid)
				FUNC17(opt, 2, FUNC2("Removing %s"), path);
			/* do not touch working file if it did not exist */
			FUNC18(opt, 1, path, !a_valid);
		} else {
			/* Modify/delete; deleted side may have put a directory in the way */
			clean_merge = 0;
			if (FUNC9(opt, path, o, a, b))
				clean_merge = -1;
		}
	} else if ((!o_valid && a_valid && !b_valid) ||
		   (!o_valid && !a_valid && b_valid)) {
		/* Case B: Added in one. */
		/* [nothing|directory] -> ([nothing|directory], file) */

		const char *add_branch;
		const char *other_branch;
		const char *conf;
		const struct diff_filespec *contents;

		if (a_valid) {
			add_branch = opt->branch1;
			other_branch = opt->branch2;
			contents = a;
			conf = FUNC2("file/directory");
		} else {
			add_branch = opt->branch2;
			other_branch = opt->branch1;
			contents = b;
			conf = FUNC2("directory/file");
		}
		if (FUNC5(opt->repo->index, path,
			       !opt->priv->call_depth && !FUNC1(a->mode),
			       0)) {
			char *new_path = FUNC20(opt, path, add_branch);
			clean_merge = 0;
			FUNC17(opt, 1, FUNC2("CONFLICT (%s): There is a directory with name %s in %s. "
			       "Adding %s as %s"),
			       conf, path, other_branch, path, new_path);
			if (FUNC21(opt, 0, contents, new_path))
				clean_merge = -1;
			else if (opt->priv->call_depth)
				FUNC19(opt->repo->index, path);
			FUNC6(new_path);
		} else {
			FUNC17(opt, 2, FUNC2("Adding %s"), path);
			/* do not overwrite file if already present */
			if (FUNC22(opt, contents, path, 1, !a_valid))
				clean_merge = -1;
		}
	} else if (a_valid && b_valid) {
		if (!o_valid) {
			/* Case C: Added in both (check for same permissions) */
			FUNC17(opt, 1,
			       FUNC2("CONFLICT (add/add): Merge conflict in %s"),
			       path);
			clean_merge = FUNC8(opt,
							    path, NULL, NULL,
							    opt->branch1,
							    opt->branch2,
							    a, b);
		} else {
			/* case D: Modified in both, but differently. */
			struct merge_file_info mfi;
			int is_dirty = 0; /* unpack_trees would have bailed if dirty */
			clean_merge = FUNC7(&mfi, opt, path,
							   is_dirty,
							   o, a, b, NULL);
		}
	} else if (!o_valid && !a_valid && !b_valid) {
		/*
		 * this entry was deleted altogether. a_mode == 0 means
		 * we had that path and want to actively remove it.
		 */
		FUNC18(opt, 1, path, !a->mode);
	} else
		FUNC0("fatal merge failure, shouldn't happen.");

	return clean_merge;
}
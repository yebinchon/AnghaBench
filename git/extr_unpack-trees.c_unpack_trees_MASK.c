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
struct TYPE_3__ {int /*<<< orphan*/  nsec; int /*<<< orphan*/  sec; } ;
struct pattern_list {int initialized; int cache_nr; int updated_workdir; scalar_t__ cache_tree; struct cache_entry** cache; int /*<<< orphan*/  oid; TYPE_2__* split_index; int /*<<< orphan*/  version; TYPE_1__ timestamp; } ;
struct unpack_trees_options {int skip_sparse_checkout; unsigned int merge_size; char* prefix; scalar_t__ exiting_early; struct pattern_list* src_index; scalar_t__ show_all_errors; struct pattern_list result; struct pattern_list* dst_index; struct pattern_list* pl; scalar_t__ nontrivial_merge; scalar_t__ trivial_merges_only; scalar_t__ merge; int /*<<< orphan*/  pathspec; struct cache_entry* df_conflict_entry; int /*<<< orphan*/  update; } ;
struct tree_desc {int dummy; } ;
struct traverse_info {int /*<<< orphan*/  pathspec; scalar_t__ show_all_errors; struct unpack_trees_options* data; int /*<<< orphan*/  fn; } ;
struct cache_entry {int ce_flags; } ;
typedef  int /*<<< orphan*/  pl ;
struct TYPE_4__ {int /*<<< orphan*/  refcount; } ;

/* Variables and functions */
 int CE_ADDED ; 
 int CE_NEW_SKIP_WORKTREE ; 
 int CE_SKIP_WORKTREE ; 
 int /*<<< orphan*/  ERROR_WOULD_LOSE_UNTRACKED_OVERWRITTEN ; 
 unsigned int MAX_UNPACK_TREES ; 
 int WRITE_TREE_REPAIR ; 
 int WRITE_TREE_SILENT ; 
 scalar_t__ FUNC0 (char*,char*,int /*<<< orphan*/ ,struct pattern_list*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct pattern_list*,struct cache_entry*,struct unpack_trees_options*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct pattern_list*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct pattern_list*) ; 
 scalar_t__ FUNC7 (struct cache_entry*,struct traverse_info*) ; 
 int /*<<< orphan*/  FUNC8 (struct cache_entry*) ; 
 scalar_t__ FUNC9 (struct unpack_trees_options*) ; 
 int /*<<< orphan*/  FUNC10 (struct pattern_list*) ; 
 int /*<<< orphan*/  core_apply_sparse_checkout ; 
 int /*<<< orphan*/  FUNC11 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (struct pattern_list*) ; 
 int /*<<< orphan*/  FUNC13 (struct unpack_trees_options*) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 scalar_t__ FUNC15 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC16 (char*) ; 
 TYPE_2__* FUNC17 (struct pattern_list*) ; 
 int /*<<< orphan*/  FUNC18 (struct pattern_list*) ; 
 int /*<<< orphan*/  FUNC19 (struct pattern_list*,struct pattern_list*,int,int) ; 
 int /*<<< orphan*/  FUNC20 (struct pattern_list*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC21 (struct pattern_list*,struct pattern_list*) ; 
 struct cache_entry* FUNC22 (struct unpack_trees_options*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (struct traverse_info*,char const*) ; 
 int /*<<< orphan*/  the_repository ; 
 int /*<<< orphan*/  FUNC25 () ; 
 int /*<<< orphan*/  FUNC26 (char*) ; 
 int FUNC27 (struct pattern_list*,unsigned int,struct tree_desc*,struct traverse_info*) ; 
 int /*<<< orphan*/  unpack_callback ; 
 int FUNC28 (struct unpack_trees_options*,char*) ; 
 scalar_t__ FUNC29 (struct cache_entry*,struct unpack_trees_options*) ; 
 scalar_t__ FUNC30 (struct cache_entry*,int /*<<< orphan*/ ,struct unpack_trees_options*) ; 
 struct cache_entry* FUNC31 (int,int /*<<< orphan*/ ) ; 

int FUNC32(unsigned len, struct tree_desc *t, struct unpack_trees_options *o)
{
	int i, ret;
	static struct cache_entry *dfc;
	struct pattern_list pl;

	if (len > MAX_UNPACK_TREES)
		FUNC11("unpack_trees takes at most %d trees", MAX_UNPACK_TREES);

	FUNC25();
	FUNC20(&pl, 0, sizeof(pl));
	if (!core_apply_sparse_checkout || !o->update)
		o->skip_sparse_checkout = 1;
	if (!o->skip_sparse_checkout) {
		char *sparse = FUNC16("info/sparse-checkout");
		if (FUNC0(sparse, "", 0, &pl, NULL) < 0)
			o->skip_sparse_checkout = 1;
		else
			o->pl = &pl;
		FUNC14(sparse);
	}

	FUNC20(&o->result, 0, sizeof(o->result));
	o->result.initialized = 1;
	o->result.timestamp.sec = o->src_index->timestamp.sec;
	o->result.timestamp.nsec = o->src_index->timestamp.nsec;
	o->result.version = o->src_index->version;
	if (!o->src_index->split_index) {
		o->result.split_index = NULL;
	} else if (o->src_index == o->dst_index) {
		/*
		 * o->dst_index (and thus o->src_index) will be discarded
		 * and overwritten with o->result at the end of this function,
		 * so just use src_index's split_index to avoid having to
		 * create a new one.
		 */
		o->result.split_index = o->src_index->split_index;
		o->result.split_index->refcount++;
	} else {
		o->result.split_index = FUNC17(&o->result);
	}
	FUNC23(&o->result.oid, &o->src_index->oid);
	o->merge_size = len;
	FUNC18(o->src_index);

	/*
	 * Sparse checkout loop #1: set NEW_SKIP_WORKTREE on existing entries
	 */
	if (!o->skip_sparse_checkout)
		FUNC19(o->pl, o->src_index, 0, CE_NEW_SKIP_WORKTREE);

	if (!dfc)
		dfc = FUNC31(1, FUNC2(0));
	o->df_conflict_entry = dfc;

	if (len) {
		const char *prefix = o->prefix ? o->prefix : "";
		struct traverse_info info;

		FUNC24(&info, prefix);
		info.fn = unpack_callback;
		info.data = o;
		info.show_all_errors = o->show_all_errors;
		info.pathspec = o->pathspec;

		if (o->prefix) {
			/*
			 * Unpack existing index entries that sort before the
			 * prefix the tree is spliced into.  Note that o->merge
			 * is always true in this case.
			 */
			while (1) {
				struct cache_entry *ce = FUNC22(o);
				if (!ce)
					break;
				if (FUNC7(ce, &info))
					break;
				if (FUNC29(ce, o) < 0)
					goto return_failed;
			}
		}

		FUNC25();
		ret = FUNC27(o->src_index, len, t, &info);
		FUNC26("traverse_trees");
		if (ret < 0)
			goto return_failed;
	}

	/* Any left-over entries in the index? */
	if (o->merge) {
		while (1) {
			struct cache_entry *ce = FUNC22(o);
			if (!ce)
				break;
			if (FUNC29(ce, o) < 0)
				goto return_failed;
		}
	}
	FUNC18(o->src_index);

	if (o->trivial_merges_only && o->nontrivial_merge) {
		ret = FUNC28(o, "Merge requires file-level merging");
		goto done;
	}

	if (!o->skip_sparse_checkout) {
		int empty_worktree = 1;

		/*
		 * Sparse checkout loop #2: set NEW_SKIP_WORKTREE on entries not in loop #1
		 * If the will have NEW_SKIP_WORKTREE, also set CE_SKIP_WORKTREE
		 * so apply_sparse_checkout() won't attempt to remove it from worktree
		 */
		FUNC19(o->pl, &o->result, CE_ADDED, CE_SKIP_WORKTREE | CE_NEW_SKIP_WORKTREE);

		ret = 0;
		for (i = 0; i < o->result.cache_nr; i++) {
			struct cache_entry *ce = o->result.cache[i];

			/*
			 * Entries marked with CE_ADDED in merged_entry() do not have
			 * verify_absent() check (the check is effectively disabled
			 * because CE_NEW_SKIP_WORKTREE is set unconditionally).
			 *
			 * Do the real check now because we have had
			 * correct CE_NEW_SKIP_WORKTREE
			 */
			if (ce->ce_flags & CE_ADDED &&
			    FUNC30(ce, ERROR_WOULD_LOSE_UNTRACKED_OVERWRITTEN, o)) {
				if (!o->show_all_errors)
					goto return_failed;
				ret = -1;
			}

			if (FUNC1(&o->result, ce, o)) {
				if (!o->show_all_errors)
					goto return_failed;
				ret = -1;
			}
			if (!FUNC8(ce))
				empty_worktree = 0;

		}
		if (ret < 0)
			goto return_failed;
		/*
		 * Sparse checkout is meant to narrow down checkout area
		 * but it does not make sense to narrow down to empty working
		 * tree. This is usually a mistake in sparse checkout rules.
		 * Do not allow users to do that.
		 */
		if (o->result.cache_nr && empty_worktree) {
			ret = FUNC28(o, "Sparse checkout leaves no entry on working directory");
			goto done;
		}
	}

	ret = FUNC9(o) ? (-2) : 0;
	if (o->dst_index) {
		FUNC21(&o->result, o->src_index);
		if (!ret) {
			if (FUNC15("GIT_TEST_CHECK_CACHE_TREE", 0))
				FUNC6(the_repository, &o->result);
			if (!o->result.cache_tree)
				o->result.cache_tree = FUNC3();
			if (!FUNC4(o->result.cache_tree))
				FUNC5(&o->result,
						  WRITE_TREE_SILENT |
						  WRITE_TREE_REPAIR);
		}

		o->result.updated_workdir = 1;
		FUNC12(o->dst_index);
		*o->dst_index = o->result;
	} else {
		FUNC12(&o->result);
	}
	o->src_index = NULL;

done:
	FUNC26("unpack_trees");
	FUNC10(&pl);
	return ret;

return_failed:
	if (o->show_all_errors)
		FUNC13(o);
	FUNC18(o->src_index);
	ret = FUNC28(o, NULL);
	if (o->exiting_early)
		ret = 0;
	goto done;
}
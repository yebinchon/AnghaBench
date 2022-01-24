#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_8__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct tree {int dummy; } ;
struct strbuf {char* buf; } ;
struct merge_options {char* ancestor; char* branch1; char* branch2; TYPE_4__* repo; TYPE_3__* priv; } ;
struct commit_list {struct commit* item; struct commit_list* next; } ;
struct TYPE_10__ {int /*<<< orphan*/  oid; } ;
struct commit {TYPE_8__* parents; TYPE_2__ object; } ;
struct TYPE_13__ {struct TYPE_13__* next; } ;
struct TYPE_12__ {int /*<<< orphan*/  index; TYPE_1__* hash_algo; } ;
struct TYPE_11__ {scalar_t__ call_depth; } ;
struct TYPE_9__ {int /*<<< orphan*/  empty_tree; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_ABBREV ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,unsigned int) ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 unsigned int FUNC2 (struct commit_list*) ; 
 int /*<<< orphan*/  FUNC3 (struct commit*,TYPE_8__**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct merge_options*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct merge_options*) ; 
 struct commit_list* FUNC7 (struct commit*,struct commit*) ; 
 struct tree* FUNC8 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 struct commit* FUNC9 (TYPE_4__*,struct tree*,char*) ; 
 int FUNC10 (struct merge_options*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tree**) ; 
 int /*<<< orphan*/  FUNC11 (struct merge_options*,int,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC12 (struct merge_options*,struct commit*) ; 
 struct commit* FUNC13 (struct commit_list**) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*,struct commit*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_4__*) ; 
 struct commit_list* FUNC16 (struct commit_list*) ; 
 scalar_t__ FUNC17 (struct merge_options*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct strbuf*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct strbuf*) ; 

__attribute__((used)) static int FUNC20(struct merge_options *opt,
				    struct commit *h1,
				    struct commit *h2,
				    struct commit_list *merge_bases,
				    struct commit **result)
{
	struct commit_list *iter;
	struct commit *merged_merge_bases;
	struct tree *result_tree;
	int clean;
	const char *ancestor_name;
	struct strbuf merge_base_abbrev = STRBUF_INIT;

	if (FUNC17(opt, 4)) {
		FUNC11(opt, 4, FUNC1("Merging:"));
		FUNC12(opt, h1);
		FUNC12(opt, h2);
	}

	if (!merge_bases) {
		merge_bases = FUNC7(h1, h2);
		merge_bases = FUNC16(merge_bases);
	}

	if (FUNC17(opt, 5)) {
		unsigned cnt = FUNC2(merge_bases);

		FUNC11(opt, 5, FUNC0("found %u common ancestor:",
				"found %u common ancestors:", cnt), cnt);
		for (iter = merge_bases; iter; iter = iter->next)
			FUNC12(opt, iter->item);
	}

	merged_merge_bases = FUNC13(&merge_bases);
	if (merged_merge_bases == NULL) {
		/* if there is no common ancestor, use an empty tree */
		struct tree *tree;

		tree = FUNC8(opt->repo, opt->repo->hash_algo->empty_tree);
		merged_merge_bases = FUNC9(opt->repo, tree,
							 "ancestor");
		ancestor_name = "empty tree";
	} else if (opt->ancestor && !opt->priv->call_depth) {
		ancestor_name = opt->ancestor;
	} else if (merge_bases) {
		ancestor_name = "merged common ancestors";
	} else {
		FUNC18(&merge_base_abbrev,
					 &merged_merge_bases->object.oid,
					 DEFAULT_ABBREV);
		ancestor_name = merge_base_abbrev.buf;
	}

	for (iter = merge_bases; iter; iter = iter->next) {
		const char *saved_b1, *saved_b2;
		opt->priv->call_depth++;
		/*
		 * When the merge fails, the result contains files
		 * with conflict markers. The cleanness flag is
		 * ignored (unless indicating an error), it was never
		 * actually used, as result of merge_trees has always
		 * overwritten it: the committed "conflicts" were
		 * already resolved.
		 */
		FUNC4(opt->repo->index);
		saved_b1 = opt->branch1;
		saved_b2 = opt->branch2;
		opt->branch1 = "Temporary merge branch 1";
		opt->branch2 = "Temporary merge branch 2";
		if (FUNC20(opt, merged_merge_bases, iter->item,
					     NULL, &merged_merge_bases) < 0)
			return -1;
		opt->branch1 = saved_b1;
		opt->branch2 = saved_b2;
		opt->priv->call_depth--;

		if (!merged_merge_bases)
			return FUNC5(opt, FUNC1("merge returned no commit"));
	}

	FUNC4(opt->repo->index);
	if (!opt->priv->call_depth)
		FUNC15(opt->repo);

	opt->ancestor = ancestor_name;
	clean = FUNC10(opt,
				     FUNC14(opt->repo, h1),
				     FUNC14(opt->repo, h2),
				     FUNC14(opt->repo,
							  merged_merge_bases),
				     &result_tree);
	FUNC19(&merge_base_abbrev);
	opt->ancestor = NULL;  /* avoid accidental re-use of opt->ancestor */
	if (clean < 0) {
		FUNC6(opt);
		return clean;
	}

	if (opt->priv->call_depth) {
		*result = FUNC9(opt->repo, result_tree,
					      "merged tree");
		FUNC3(h1, &(*result)->parents);
		FUNC3(h2, &(*result)->parents->next);
	}
	return clean;
}
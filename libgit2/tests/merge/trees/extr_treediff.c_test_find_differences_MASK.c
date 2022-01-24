#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_11__ ;

/* Type definitions */
struct merge_index_conflict_data {int dummy; } ;
typedef  int /*<<< orphan*/  git_tree ;
typedef  int /*<<< orphan*/  git_oid ;
struct TYPE_16__ {int target_limit; int rename_threshold; TYPE_11__* metric; int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ git_merge_options ;
struct TYPE_19__ {size_t length; } ;
struct TYPE_17__ {TYPE_4__ conflicts; } ;
typedef  TYPE_2__ git_merge_diff_list ;
struct TYPE_18__ {int /*<<< orphan*/  flags; } ;
typedef  TYPE_3__ git_iterator_options ;
typedef  int /*<<< orphan*/  git_iterator ;
typedef  int /*<<< orphan*/  git_diff_similarity_metric ;
struct TYPE_15__ {void* payload; int /*<<< orphan*/  similarity; int /*<<< orphan*/  free_signature; int /*<<< orphan*/  buffer_signature; int /*<<< orphan*/  file_signature; } ;

/* Variables and functions */
 scalar_t__ GIT_HASHSIG_SMART_WHITESPACE ; 
 int /*<<< orphan*/  GIT_ITERATOR_DONT_IGNORE_CASE ; 
 TYPE_3__ GIT_ITERATOR_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_MERGE_FIND_RENAMES ; 
 TYPE_1__ GIT_MERGE_OPTIONS_INIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_11__*) ; 
 TYPE_11__* FUNC3 (int) ; 
 int /*<<< orphan*/  git_diff_find_similar__calc_similarity ; 
 int /*<<< orphan*/  git_diff_find_similar__hashsig_for_buf ; 
 int /*<<< orphan*/  git_diff_find_similar__hashsig_for_file ; 
 int /*<<< orphan*/  git_diff_find_similar__hashsig_free ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC13 (TYPE_4__*,struct merge_index_conflict_data*,size_t) ; 
 int /*<<< orphan*/  repo ; 

__attribute__((used)) static void FUNC14(
    const char *ancestor_oidstr,
    const char *ours_oidstr,
    const char *theirs_oidstr,
    struct merge_index_conflict_data *treediff_conflict_data,
    size_t treediff_conflict_data_len)
{
    git_merge_diff_list *merge_diff_list = FUNC6(repo);
    git_oid ancestor_oid, ours_oid, theirs_oid;
    git_tree *ancestor_tree, *ours_tree, *theirs_tree;
	git_iterator *ancestor_iter, *ours_iter, *theirs_iter;
	git_iterator_options iter_opts = GIT_ITERATOR_OPTIONS_INIT;

	git_merge_options opts = GIT_MERGE_OPTIONS_INIT;
	opts.flags |= GIT_MERGE_FIND_RENAMES;
	opts.target_limit = 1000;
	opts.rename_threshold = 50;

	opts.metric = FUNC3(sizeof(git_diff_similarity_metric));
	FUNC0(opts.metric != NULL);

	opts.metric->file_signature = git_diff_find_similar__hashsig_for_file;
	opts.metric->buffer_signature = git_diff_find_similar__hashsig_for_buf;
	opts.metric->free_signature = git_diff_find_similar__hashsig_free;
	opts.metric->similarity = git_diff_find_similar__calc_similarity;
	opts.metric->payload = (void *)GIT_HASHSIG_SMART_WHITESPACE;

	FUNC1(FUNC10(&ancestor_oid, ancestor_oidstr));
	FUNC1(FUNC10(&ours_oid, ours_oidstr));
	FUNC1(FUNC10(&theirs_oid, theirs_oidstr));

	FUNC1(FUNC12(&ancestor_tree, repo, &ancestor_oid));
	FUNC1(FUNC12(&ours_tree, repo, &ours_oid));
	FUNC1(FUNC12(&theirs_tree, repo, &theirs_oid));

	iter_opts.flags = GIT_ITERATOR_DONT_IGNORE_CASE;

	FUNC1(FUNC4(&ancestor_iter, ancestor_tree, &iter_opts));
	FUNC1(FUNC4(&ours_iter, ours_tree, &iter_opts));
	FUNC1(FUNC4(&theirs_iter, theirs_tree, &iter_opts));

	FUNC1(FUNC7(merge_diff_list, ancestor_iter, ours_iter, theirs_iter));
	FUNC1(FUNC8(repo, merge_diff_list, &opts));

	/*
	dump_merge_index(merge_index);
	 */

	FUNC0(treediff_conflict_data_len == merge_diff_list->conflicts.length);

	FUNC0(FUNC13(&merge_diff_list->conflicts, treediff_conflict_data, treediff_conflict_data_len));

	FUNC5(ancestor_iter);
	FUNC5(ours_iter);
	FUNC5(theirs_iter);

	FUNC11(ancestor_tree);
	FUNC11(ours_tree);
	FUNC11(theirs_tree);

	FUNC9(merge_diff_list);

	FUNC2(opts.metric);
}
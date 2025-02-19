
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_11__ ;


struct merge_index_conflict_data {int dummy; } ;
typedef int git_tree ;
typedef int git_oid ;
struct TYPE_16__ {int target_limit; int rename_threshold; TYPE_11__* metric; int flags; } ;
typedef TYPE_1__ git_merge_options ;
struct TYPE_19__ {size_t length; } ;
struct TYPE_17__ {TYPE_4__ conflicts; } ;
typedef TYPE_2__ git_merge_diff_list ;
struct TYPE_18__ {int flags; } ;
typedef TYPE_3__ git_iterator_options ;
typedef int git_iterator ;
typedef int git_diff_similarity_metric ;
struct TYPE_15__ {void* payload; int similarity; int free_signature; int buffer_signature; int file_signature; } ;


 scalar_t__ GIT_HASHSIG_SMART_WHITESPACE ;
 int GIT_ITERATOR_DONT_IGNORE_CASE ;
 TYPE_3__ GIT_ITERATOR_OPTIONS_INIT ;
 int GIT_MERGE_FIND_RENAMES ;
 TYPE_1__ GIT_MERGE_OPTIONS_INIT ;
 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 int git__free (TYPE_11__*) ;
 TYPE_11__* git__malloc (int) ;
 int git_diff_find_similar__calc_similarity ;
 int git_diff_find_similar__hashsig_for_buf ;
 int git_diff_find_similar__hashsig_for_file ;
 int git_diff_find_similar__hashsig_free ;
 int git_iterator_for_tree (int **,int *,TYPE_3__*) ;
 int git_iterator_free (int *) ;
 TYPE_2__* git_merge_diff_list__alloc (int ) ;
 int git_merge_diff_list__find_differences (TYPE_2__*,int *,int *,int *) ;
 int git_merge_diff_list__find_renames (int ,TYPE_2__*,TYPE_1__*) ;
 int git_merge_diff_list__free (TYPE_2__*) ;
 int git_oid_fromstr (int *,char const*) ;
 int git_tree_free (int *) ;
 int git_tree_lookup (int **,int ,int *) ;
 int merge_test_merge_conflicts (TYPE_4__*,struct merge_index_conflict_data*,size_t) ;
 int repo ;

__attribute__((used)) static void test_find_differences(
    const char *ancestor_oidstr,
    const char *ours_oidstr,
    const char *theirs_oidstr,
    struct merge_index_conflict_data *treediff_conflict_data,
    size_t treediff_conflict_data_len)
{
    git_merge_diff_list *merge_diff_list = git_merge_diff_list__alloc(repo);
    git_oid ancestor_oid, ours_oid, theirs_oid;
    git_tree *ancestor_tree, *ours_tree, *theirs_tree;
 git_iterator *ancestor_iter, *ours_iter, *theirs_iter;
 git_iterator_options iter_opts = GIT_ITERATOR_OPTIONS_INIT;

 git_merge_options opts = GIT_MERGE_OPTIONS_INIT;
 opts.flags |= GIT_MERGE_FIND_RENAMES;
 opts.target_limit = 1000;
 opts.rename_threshold = 50;

 opts.metric = git__malloc(sizeof(git_diff_similarity_metric));
 cl_assert(opts.metric != ((void*)0));

 opts.metric->file_signature = git_diff_find_similar__hashsig_for_file;
 opts.metric->buffer_signature = git_diff_find_similar__hashsig_for_buf;
 opts.metric->free_signature = git_diff_find_similar__hashsig_free;
 opts.metric->similarity = git_diff_find_similar__calc_similarity;
 opts.metric->payload = (void *)GIT_HASHSIG_SMART_WHITESPACE;

 cl_git_pass(git_oid_fromstr(&ancestor_oid, ancestor_oidstr));
 cl_git_pass(git_oid_fromstr(&ours_oid, ours_oidstr));
 cl_git_pass(git_oid_fromstr(&theirs_oid, theirs_oidstr));

 cl_git_pass(git_tree_lookup(&ancestor_tree, repo, &ancestor_oid));
 cl_git_pass(git_tree_lookup(&ours_tree, repo, &ours_oid));
 cl_git_pass(git_tree_lookup(&theirs_tree, repo, &theirs_oid));

 iter_opts.flags = GIT_ITERATOR_DONT_IGNORE_CASE;

 cl_git_pass(git_iterator_for_tree(&ancestor_iter, ancestor_tree, &iter_opts));
 cl_git_pass(git_iterator_for_tree(&ours_iter, ours_tree, &iter_opts));
 cl_git_pass(git_iterator_for_tree(&theirs_iter, theirs_tree, &iter_opts));

 cl_git_pass(git_merge_diff_list__find_differences(merge_diff_list, ancestor_iter, ours_iter, theirs_iter));
 cl_git_pass(git_merge_diff_list__find_renames(repo, merge_diff_list, &opts));





 cl_assert(treediff_conflict_data_len == merge_diff_list->conflicts.length);

 cl_assert(merge_test_merge_conflicts(&merge_diff_list->conflicts, treediff_conflict_data, treediff_conflict_data_len));

 git_iterator_free(ancestor_iter);
 git_iterator_free(ours_iter);
 git_iterator_free(theirs_iter);

 git_tree_free(ancestor_tree);
 git_tree_free(ours_tree);
 git_tree_free(theirs_tree);

 git_merge_diff_list__free(merge_diff_list);

 git__free(opts.metric);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct rename_expected {int member_0; unsigned int* member_1; char const** member_2; char const** member_3; scalar_t__ idx; scalar_t__ len; } ;
typedef int git_tree ;
typedef int git_reference ;
typedef int git_object ;
typedef int git_index ;
typedef int git_diff_options ;
struct TYPE_7__ {int flags; } ;
typedef TYPE_1__ git_diff_find_options ;
typedef int git_diff ;
struct TYPE_8__ {int checkout_strategy; } ;
typedef TYPE_2__ git_checkout_options ;


 int GIT_CHECKOUT_FORCE ;
 TYPE_2__ GIT_CHECKOUT_OPTIONS_INIT ;
 unsigned int GIT_DELTA_ADDED ;
 unsigned int GIT_DELTA_RENAMED ;
 TYPE_1__ GIT_DIFF_FIND_OPTIONS_INIT ;
 int GIT_DIFF_FIND_RENAMES ;
 int GIT_DIFF_OPTIONS_INIT ;
 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_checkout_head (int ,TYPE_2__*) ;
 int git_diff_find_similar (int *,TYPE_1__*) ;
 int git_diff_foreach (int *,int ,int *,int *,int *,struct rename_expected*) ;
 int git_diff_free (int *) ;
 int git_diff_tree_to_index (int **,int ,int *,int *,int *) ;
 int git_index_add_bypath (int *,char*) ;
 int git_index_free (int *) ;
 int git_index_remove_bypath (int *,char*) ;
 int git_index_write (int *) ;
 int git_reference_free (int *) ;
 int git_reference_lookup (int **,int ,char*) ;
 int git_reference_symbolic_set_target (int **,int *,char*,int *) ;
 int git_repository_index (int **,int ) ;
 int git_revparse_single (int **,int ,char*) ;
 int git_tree_free (int *) ;
 int p_unlink (char*) ;
 int test_names_expected ;
 int write_similarity_file_two (char*,int) ;

void test_diff_rename__rejected_match_can_match_others_three(void)
{
 git_reference *head, *selfsimilar;
 git_index *index;
 git_tree *tree;
 git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;
 git_diff *diff;
 git_diff_options diffopts = GIT_DIFF_OPTIONS_INIT;
 git_diff_find_options findopts = GIT_DIFF_FIND_OPTIONS_INIT;


 unsigned int status[] = { GIT_DELTA_ADDED, GIT_DELTA_RENAMED };
 const char *sources[] = { "0001.txt", "a.txt" };
 const char *targets[] = { "0001.txt", "0002.txt" };
 struct rename_expected expect = { 2, status, sources, targets };

 opts.checkout_strategy = GIT_CHECKOUT_FORCE;
 findopts.flags = GIT_DIFF_FIND_RENAMES;

 cl_git_pass(git_reference_lookup(&head, g_repo, "HEAD"));
 cl_git_pass(git_reference_symbolic_set_target(
  &selfsimilar, head, "refs/heads/renames_similar_two", ((void*)0)));
 cl_git_pass(git_checkout_head(g_repo, &opts));
 cl_git_pass(git_repository_index(&index, g_repo));

 cl_git_pass(p_unlink("renames/a.txt"));

 cl_git_pass(git_index_remove_bypath(index, "a.txt"));

 write_similarity_file_two("renames/0001.txt", 7);
 write_similarity_file_two("renames/0002.txt", 0);

 cl_git_pass(git_index_add_bypath(index, "0001.txt"));
 cl_git_pass(git_index_add_bypath(index, "0002.txt"));

 cl_git_pass(git_index_write(index));

 cl_git_pass(
  git_revparse_single((git_object **)&tree, g_repo, "HEAD^{tree}"));

 cl_git_pass(
  git_diff_tree_to_index(&diff, g_repo, tree, index, &diffopts));

 cl_git_pass(git_diff_find_similar(diff, &findopts));

 cl_git_pass(git_diff_foreach(
  diff, test_names_expected, ((void*)0), ((void*)0), ((void*)0), &expect));

 cl_assert(expect.idx == expect.len);

 git_diff_free(diff);
 git_tree_free(tree);
 git_index_free(index);
 git_reference_free(head);
 git_reference_free(selfsimilar);
}

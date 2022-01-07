
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct rename_expected {int member_0; unsigned int* member_1; char const** member_2; char const** member_3; scalar_t__ idx; scalar_t__ len; } ;
typedef int git_tree ;
typedef int git_object ;
typedef int git_index ;
typedef int git_diff_options ;
struct TYPE_4__ {int flags; } ;
typedef TYPE_1__ git_diff_find_options ;
typedef int git_diff ;


 unsigned int GIT_DELTA_RENAMED ;
 int GIT_DIFF_FIND_AND_BREAK_REWRITES ;
 TYPE_1__ GIT_DIFF_FIND_OPTIONS_INIT ;
 int GIT_DIFF_FIND_RENAMES_FROM_REWRITES ;
 int GIT_DIFF_FIND_REWRITES ;
 int GIT_DIFF_OPTIONS_INIT ;
 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_diff_find_similar (int *,TYPE_1__*) ;
 int git_diff_foreach (int *,int ,int *,int *,int *,struct rename_expected*) ;
 int git_diff_free (int *) ;
 int git_diff_tree_to_index (int **,int ,int *,int *,int *) ;
 int git_index_add_bypath (int *,char*) ;
 int git_index_free (int *) ;
 int git_index_remove_bypath (int *,char*) ;
 int git_index_write (int *) ;
 int git_repository_index (int **,int ) ;
 int git_revparse_single (int **,int ,char*) ;
 int git_tree_free (int *) ;
 int p_rename (char*,char*) ;
 int test_names_expected ;

void test_diff_rename__can_rename_from_rewrite(void)
{
 git_index *index;
 git_tree *tree;
 git_diff *diff;
 git_diff_options diffopts = GIT_DIFF_OPTIONS_INIT;
 git_diff_find_options findopts = GIT_DIFF_FIND_OPTIONS_INIT;

 unsigned int status[] = { GIT_DELTA_RENAMED, GIT_DELTA_RENAMED };
 const char *sources[] = { "ikeepsix.txt", "songof7cities.txt" };
 const char *targets[] = { "songof7cities.txt", "this-is-a-rename.txt" };
 struct rename_expected expect = { 2, status, sources, targets };

 cl_git_pass(git_repository_index(&index, g_repo));

 cl_git_pass(p_rename("renames/songof7cities.txt", "renames/this-is-a-rename.txt"));
 cl_git_pass(p_rename("renames/ikeepsix.txt", "renames/songof7cities.txt"));

 cl_git_pass(git_index_remove_bypath(index, "ikeepsix.txt"));

 cl_git_pass(git_index_add_bypath(index, "songof7cities.txt"));
 cl_git_pass(git_index_add_bypath(index, "this-is-a-rename.txt"));

 cl_git_pass(git_index_write(index));

 cl_git_pass(
  git_revparse_single((git_object **)&tree, g_repo, "HEAD^{tree}"));

 cl_git_pass(
  git_diff_tree_to_index(&diff, g_repo, tree, index, &diffopts));

 findopts.flags |= GIT_DIFF_FIND_AND_BREAK_REWRITES |
  GIT_DIFF_FIND_REWRITES |
  GIT_DIFF_FIND_RENAMES_FROM_REWRITES;

 cl_git_pass(git_diff_find_similar(diff, &findopts));

 cl_git_pass(git_diff_foreach(
  diff, test_names_expected, ((void*)0), ((void*)0), ((void*)0), &expect));

 cl_assert(expect.idx == expect.len);

 git_diff_free(diff);
 git_tree_free(tree);
 git_index_free(index);
}

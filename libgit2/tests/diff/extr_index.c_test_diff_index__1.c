
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int git_tree ;
struct TYPE_7__ {int context_lines; int interhunk_lines; } ;
typedef TYPE_1__ git_diff_options ;
typedef int git_diff ;
typedef int exp ;
struct TYPE_8__ {int files; } ;
typedef TYPE_2__ diff_expects ;


 TYPE_1__ GIT_DIFF_OPTIONS_INIT ;
 int cl_assert (int *) ;
 int cl_assert_equal_i (int,int ) ;
 int cl_git_pass (int ) ;
 int diff_stop_after_2_files ;
 int g_repo ;
 int git_diff_foreach (int *,int ,int *,int *,int *,TYPE_2__*) ;
 int git_diff_free (int *) ;
 int git_diff_tree_to_index (int **,int ,int *,int *,TYPE_1__*) ;
 int git_tree_free (int *) ;
 int memset (TYPE_2__*,int ,int) ;
 int * resolve_commit_oid_to_tree (int ,char const*) ;

void test_diff_index__1(void)
{

 const char *a_commit = "26a125ee1bf";
 const char *b_commit = "0017bd4ab1ec3";
 git_tree *a = resolve_commit_oid_to_tree(g_repo, a_commit);
 git_tree *b = resolve_commit_oid_to_tree(g_repo, b_commit);
 git_diff_options opts = GIT_DIFF_OPTIONS_INIT;
 git_diff *diff = ((void*)0);
 diff_expects exp;

 cl_assert(a);
 cl_assert(b);

 opts.context_lines = 1;
 opts.interhunk_lines = 1;

 memset(&exp, 0, sizeof(exp));

 cl_git_pass(git_diff_tree_to_index(&diff, g_repo, a, ((void*)0), &opts));

 cl_assert_equal_i(1, git_diff_foreach(
  diff, diff_stop_after_2_files, ((void*)0), ((void*)0), ((void*)0), &exp) );

 cl_assert_equal_i(2, exp.files);

 git_diff_free(diff);
 diff = ((void*)0);

 git_tree_free(a);
 git_tree_free(b);
}

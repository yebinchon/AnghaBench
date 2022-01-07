
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int git_tree ;
struct TYPE_6__ {int klass; } ;
typedef TYPE_1__ git_error ;
struct TYPE_7__ {int version; } ;
typedef TYPE_2__ git_diff_options ;
typedef int git_diff ;


 TYPE_2__ GIT_DIFF_OPTIONS_INIT ;
 int GIT_ERROR_INVALID ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_assert_equal_p (int *,int *) ;
 int cl_git_fail (int ) ;
 int g_repo ;
 int git_diff_tree_to_index (int **,int ,int *,int *,TYPE_2__*) ;
 int git_error_clear () ;
 TYPE_1__* git_error_last () ;
 int git_tree_free (int *) ;
 int * resolve_commit_oid_to_tree (int ,char const*) ;

void test_diff_index__checks_options_version(void)
{
 const char *a_commit = "26a125ee1bf";
 git_tree *a = resolve_commit_oid_to_tree(g_repo, a_commit);
 git_diff_options opts = GIT_DIFF_OPTIONS_INIT;
 git_diff *diff = ((void*)0);
 const git_error *err;

 opts.version = 0;
 cl_git_fail(git_diff_tree_to_index(&diff, g_repo, a, ((void*)0), &opts));
 err = git_error_last();
 cl_assert_equal_i(GIT_ERROR_INVALID, err->klass);
 cl_assert_equal_p(diff, ((void*)0));

 git_error_clear();
 opts.version = 1024;
 cl_git_fail(git_diff_tree_to_index(&diff, g_repo, a, ((void*)0), &opts));
 err = git_error_last();
 cl_assert_equal_i(GIT_ERROR_INVALID, err->klass);
 cl_assert_equal_p(diff, ((void*)0));

 git_tree_free(a);
}

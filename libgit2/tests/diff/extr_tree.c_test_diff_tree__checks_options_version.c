
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int klass; } ;
typedef TYPE_1__ git_error ;
struct TYPE_6__ {int version; } ;


 int GIT_ERROR_INVALID ;
 int * a ;
 int * b ;
 int cl_assert (int ) ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_git_fail (int ) ;
 int cl_git_sandbox_init (char*) ;
 int diff ;
 int g_repo ;
 int git_diff_tree_to_tree (int *,int ,int *,int *,TYPE_2__*) ;
 int git_error_clear () ;
 TYPE_1__* git_error_last () ;
 TYPE_2__ opts ;
 void* resolve_commit_oid_to_tree (int ,char const*) ;

void test_diff_tree__checks_options_version(void)
{
 const char *a_commit = "8496071c1b46c85";
 const char *b_commit = "be3563ae3f79";
 const git_error *err;

 g_repo = cl_git_sandbox_init("testrepo.git");

 cl_assert((a = resolve_commit_oid_to_tree(g_repo, a_commit)) != ((void*)0));
 cl_assert((b = resolve_commit_oid_to_tree(g_repo, b_commit)) != ((void*)0));

 opts.version = 0;
 cl_git_fail(git_diff_tree_to_tree(&diff, g_repo, a, b, &opts));
 err = git_error_last();
 cl_assert_equal_i(GIT_ERROR_INVALID, err->klass);

 git_error_clear();
 opts.version = 1024;
 cl_git_fail(git_diff_tree_to_tree(&diff, g_repo, a, b, &opts));
 err = git_error_last();
}

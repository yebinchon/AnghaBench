
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int klass; } ;
typedef TYPE_1__ git_error ;
struct TYPE_7__ {int version; } ;
typedef TYPE_2__ git_diff_options ;
typedef int git_diff ;


 TYPE_2__ GIT_DIFF_OPTIONS_INIT ;
 int GIT_ERROR_INVALID ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_git_fail (int ) ;
 int cl_git_sandbox_init (char*) ;
 int g_repo ;
 int git_diff_tree_to_workdir (int **,int ,int *,TYPE_2__*) ;
 int git_error_clear () ;
 TYPE_1__* git_error_last () ;

void test_diff_workdir__checks_options_version(void)
{
 git_diff *diff;
 git_diff_options opts = GIT_DIFF_OPTIONS_INIT;
 const git_error *err;

 g_repo = cl_git_sandbox_init("status");

 opts.version = 0;
 cl_git_fail(git_diff_tree_to_workdir(&diff, g_repo, ((void*)0), &opts));
 err = git_error_last();
 cl_assert_equal_i(GIT_ERROR_INVALID, err->klass);

 git_error_clear();
 opts.version = 1024;
 cl_git_fail(git_diff_tree_to_workdir(&diff, g_repo, ((void*)0), &opts));
 err = git_error_last();
 cl_assert_equal_i(GIT_ERROR_INVALID, err->klass);
}

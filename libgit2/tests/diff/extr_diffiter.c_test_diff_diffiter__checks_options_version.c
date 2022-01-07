
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int git_repository ;
struct TYPE_6__ {int klass; } ;
typedef TYPE_1__ git_error ;
struct TYPE_7__ {int version; int flags; } ;
typedef TYPE_2__ git_diff_options ;
typedef int git_diff ;


 int GIT_DIFF_INCLUDE_IGNORED ;
 int GIT_DIFF_INCLUDE_UNTRACKED ;
 TYPE_2__ GIT_DIFF_OPTIONS_INIT ;
 int GIT_ERROR_INVALID ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_git_fail (int ) ;
 int * cl_git_sandbox_init (char*) ;
 int git_diff_index_to_workdir (int **,int *,int *,TYPE_2__*) ;
 int git_error_clear () ;
 TYPE_1__* git_error_last () ;

void test_diff_diffiter__checks_options_version(void)
{
 git_repository *repo = cl_git_sandbox_init("status");
 git_diff_options opts = GIT_DIFF_OPTIONS_INIT;
 git_diff *diff = ((void*)0);
 const git_error *err;

 opts.version = 0;
 opts.flags |= GIT_DIFF_INCLUDE_IGNORED | GIT_DIFF_INCLUDE_UNTRACKED;

 cl_git_fail(git_diff_index_to_workdir(&diff, repo, ((void*)0), &opts));
 err = git_error_last();
 cl_assert_equal_i(GIT_ERROR_INVALID, err->klass);

 git_error_clear();
 opts.version = 1024;
 cl_git_fail(git_diff_index_to_workdir(&diff, repo, ((void*)0), &opts));
 err = git_error_last();
 cl_assert_equal_i(GIT_ERROR_INVALID, err->klass);
}

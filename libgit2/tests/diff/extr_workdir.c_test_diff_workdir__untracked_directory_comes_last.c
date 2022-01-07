
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int context_lines; int interhunk_lines; int flags; } ;
typedef TYPE_1__ git_diff_options ;
typedef int git_diff ;


 int GIT_DIFF_INCLUDE_IGNORED ;
 int GIT_DIFF_INCLUDE_UNTRACKED ;
 TYPE_1__ GIT_DIFF_OPTIONS_INIT ;
 int cl_assert (int ) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (char*) ;
 int g_repo ;
 int git_diff_free (int *) ;
 int git_diff_index_to_workdir (int **,int ,int *,TYPE_1__*) ;
 int p_mkdir (char*,int) ;

void test_diff_workdir__untracked_directory_comes_last(void)
{
 git_diff_options opts = GIT_DIFF_OPTIONS_INIT;
 git_diff *diff = ((void*)0);

 g_repo = cl_git_sandbox_init("renames");

 cl_git_mkfile("renames/.gitignore", "*.ign\n");
 cl_git_pass(p_mkdir("renames/zzz_untracked", 0777));
 cl_git_mkfile("renames/zzz_untracked/an.ign", "ignore me please");
 cl_git_mkfile("renames/zzz_untracked/skip.ign", "ignore me really");
 cl_git_mkfile("renames/zzz_untracked/test.ign", "ignore me now");

 opts.context_lines = 3;
 opts.interhunk_lines = 1;
 opts.flags |= GIT_DIFF_INCLUDE_IGNORED | GIT_DIFF_INCLUDE_UNTRACKED;

 cl_git_pass(git_diff_index_to_workdir(&diff, g_repo, ((void*)0), &opts));

 cl_assert(diff != ((void*)0));

 git_diff_free(diff);
}

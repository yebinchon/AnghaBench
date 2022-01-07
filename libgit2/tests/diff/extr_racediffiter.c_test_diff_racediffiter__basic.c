
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_repository ;
struct TYPE_5__ {int flags; TYPE_2__* payload; int notify_cb; } ;
typedef TYPE_1__ git_diff_options ;
typedef int git_diff ;
struct TYPE_6__ {char* member_0; int member_1; } ;
typedef TYPE_2__ basic_payload ;


 int GIT_DELTA_IGNORED ;
 int GIT_DELTA_MODIFIED ;
 int GIT_DIFF_INCLUDE_IGNORED ;
 TYPE_1__ GIT_DIFF_OPTIONS_INIT ;
 int GIT_DIFF_RECURSE_UNTRACKED_DIRS ;
 int cl_git_pass (int ) ;
 int * cl_git_sandbox_init (char*) ;
 int cl_must_pass (int ) ;
 int git_diff_free (int *) ;
 int git_diff_index_to_workdir (int **,int *,int *,TYPE_1__*) ;
 int notify_cb__basic ;
 int p_mkdir (char*,int) ;

void test_diff_racediffiter__basic(void)
{
 git_diff_options opts = GIT_DIFF_OPTIONS_INIT;
 git_repository *repo = cl_git_sandbox_init("diff");
 git_diff *diff;

 basic_payload exp_a[] = {
  { "another.txt", GIT_DELTA_MODIFIED },
  { "readme.txt", GIT_DELTA_MODIFIED },
  { "zzzzz/", GIT_DELTA_IGNORED },
  { ((void*)0), 0 }
 };

 cl_must_pass(p_mkdir("diff/zzzzz", 0777));

 opts.flags |= GIT_DIFF_INCLUDE_IGNORED | GIT_DIFF_RECURSE_UNTRACKED_DIRS;
 opts.notify_cb = notify_cb__basic;
 opts.payload = exp_a;

 cl_git_pass(git_diff_index_to_workdir(&diff, repo, ((void*)0), &opts));

 git_diff_free(diff);
}

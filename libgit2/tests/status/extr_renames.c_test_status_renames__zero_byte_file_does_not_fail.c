
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct status_entry {char* member_1; char* member_2; int member_0; } ;
struct TYPE_4__ {int flags; } ;
typedef TYPE_1__ git_status_options ;
typedef int git_status_list ;


 TYPE_1__ GIT_STATUS_OPTIONS_INIT ;
 int GIT_STATUS_OPT_INCLUDE_IGNORED ;
 int GIT_STATUS_OPT_INCLUDE_UNTRACKED ;
 int GIT_STATUS_OPT_RECURSE_IGNORED_DIRS ;
 int GIT_STATUS_OPT_RECURSE_UNTRACKED_DIRS ;
 int GIT_STATUS_OPT_RENAMES_FROM_REWRITES ;
 int GIT_STATUS_OPT_RENAMES_HEAD_TO_INDEX ;
 int GIT_STATUS_OPT_RENAMES_INDEX_TO_WORKDIR ;
 int GIT_STATUS_SHOW_INDEX_AND_WORKDIR ;
 int GIT_STATUS_WT_DELETED ;
 int GIT_STATUS_WT_NEW ;
 int check_status (int *,struct status_entry*,int) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_status_list_free (int *) ;
 int git_status_list_new (int **,int ,TYPE_1__*) ;
 int p_unlink (char*) ;

void test_status_renames__zero_byte_file_does_not_fail(void)
{
 git_status_list *statuslist;
 git_status_options opts = GIT_STATUS_OPTIONS_INIT;

 struct status_entry expected[] = {
  { GIT_STATUS_WT_DELETED, "ikeepsix.txt", "ikeepsix.txt" },
  { GIT_STATUS_WT_NEW, "zerobyte.txt", "zerobyte.txt" },
 };

 opts.flags |= GIT_STATUS_OPT_RENAMES_FROM_REWRITES |
  GIT_STATUS_OPT_RENAMES_HEAD_TO_INDEX |
  GIT_STATUS_OPT_RENAMES_INDEX_TO_WORKDIR |
  GIT_STATUS_OPT_INCLUDE_IGNORED |
  GIT_STATUS_OPT_INCLUDE_UNTRACKED |
  GIT_STATUS_OPT_RECURSE_UNTRACKED_DIRS |
  GIT_STATUS_SHOW_INDEX_AND_WORKDIR |
  GIT_STATUS_OPT_RECURSE_IGNORED_DIRS;

 p_unlink("renames/ikeepsix.txt");
 cl_git_mkfile("renames/zerobyte.txt", "");

 cl_git_pass(git_status_list_new(&statuslist, g_repo, &opts));
 check_status(statuslist, expected, 2);
 git_status_list_free(statuslist);
}

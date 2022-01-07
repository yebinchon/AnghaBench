
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
 int GIT_STATUS_OPT_INCLUDE_UNTRACKED ;
 int GIT_STATUS_OPT_RENAMES_INDEX_TO_WORKDIR ;
 int GIT_STATUS_WT_RENAMED ;
 int check_status (int *,struct status_entry*,int) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_status_list_free (int *) ;
 int git_status_list_new (int **,int ,TYPE_1__*) ;
 int rename_file (int ,char*,char*) ;

void test_status_renames__index2workdir_one(void)
{
 git_status_list *statuslist;
 git_status_options opts = GIT_STATUS_OPTIONS_INIT;
 struct status_entry expected[] = {
  { GIT_STATUS_WT_RENAMED, "ikeepsix.txt", "newname.txt" },
 };

 opts.flags |= GIT_STATUS_OPT_INCLUDE_UNTRACKED;
 opts.flags |= GIT_STATUS_OPT_RENAMES_INDEX_TO_WORKDIR;

 rename_file(g_repo, "ikeepsix.txt", "newname.txt");

 cl_git_pass(git_status_list_new(&statuslist, g_repo, &opts));
 check_status(statuslist, expected, 1);
 git_status_list_free(statuslist);
}

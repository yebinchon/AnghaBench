
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct status_entry {int member_0; char* member_1; char* member_2; } ;
struct TYPE_4__ {int flags; } ;
typedef TYPE_1__ git_status_options ;
typedef int git_status_list ;
typedef int git_index ;


 int GIT_INDEX_CAPABILITY_IGNORE_CASE ;
 int GIT_STATUS_INDEX_RENAMED ;
 TYPE_1__ GIT_STATUS_OPTIONS_INIT ;
 int GIT_STATUS_OPT_INCLUDE_UNTRACKED ;
 int GIT_STATUS_OPT_RENAMES_HEAD_TO_INDEX ;
 int GIT_STATUS_OPT_RENAMES_INDEX_TO_WORKDIR ;
 int GIT_STATUS_WT_RENAMED ;
 int check_status (int *,struct status_entry*,int) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_index_add_bypath (int *,char*) ;
 int git_index_caps (int *) ;
 int git_index_free (int *) ;
 int git_index_remove_bypath (int *,char*) ;
 int git_index_write (int *) ;
 int git_repository_index (int **,int ) ;
 int git_status_list_free (int *) ;
 int git_status_list_new (int **,int ,TYPE_1__*) ;
 int rename_file (int ,char*,char*) ;

void test_status_renames__both_casechange_one(void)
{
 git_index *index;
 git_status_list *statuslist;
 git_status_options opts = GIT_STATUS_OPTIONS_INIT;
 int index_caps;
 struct status_entry expected_icase[] = {
  { GIT_STATUS_INDEX_RENAMED,
    "ikeepsix.txt", "IKeepSix.txt" },
 };
 struct status_entry expected_case[] = {
  { GIT_STATUS_INDEX_RENAMED | GIT_STATUS_WT_RENAMED,
    "ikeepsix.txt", "IKEEPSIX.txt" },
 };

 opts.flags |= GIT_STATUS_OPT_INCLUDE_UNTRACKED;
 opts.flags |= GIT_STATUS_OPT_RENAMES_HEAD_TO_INDEX;
 opts.flags |= GIT_STATUS_OPT_RENAMES_INDEX_TO_WORKDIR;

 cl_git_pass(git_repository_index(&index, g_repo));
 index_caps = git_index_caps(index);

 rename_file(g_repo, "ikeepsix.txt", "IKeepSix.txt");

 cl_git_pass(git_index_remove_bypath(index, "ikeepsix.txt"));
 cl_git_pass(git_index_add_bypath(index, "IKeepSix.txt"));
 cl_git_pass(git_index_write(index));




 rename_file(g_repo, "IKeepSix.txt", "IKEEPSIX.txt");

 cl_git_pass(git_status_list_new(&statuslist, g_repo, &opts));

 check_status(statuslist, (index_caps & GIT_INDEX_CAPABILITY_IGNORE_CASE) ?
  expected_icase : expected_case, 1);

 git_status_list_free(statuslist);

 git_index_free(index);
}

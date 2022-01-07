
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


 int ARRAY_SIZE (struct status_entry*) ;
 int GIT_STATUS_INDEX_RENAMED ;
 TYPE_1__ GIT_STATUS_OPTIONS_INIT ;
 int GIT_STATUS_OPT_INCLUDE_UNTRACKED ;
 int GIT_STATUS_OPT_RENAMES_HEAD_TO_INDEX ;
 int GIT_STATUS_OPT_RENAMES_INDEX_TO_WORKDIR ;
 int GIT_STATUS_WT_RENAMED ;
 int check_status (int *,struct status_entry*,int ) ;
 int cl_assert_equal_sz (int ,int ) ;
 int cl_git_pass (int ) ;
 int cl_repo_commit_from_index (int *,int ,int *,int ,char*) ;
 int cl_repo_set_bool (int ,char*,int) ;
 int g_repo ;
 int git_index_add_bypath (int *,char*) ;
 int git_index_free (int *) ;
 int git_index_remove_bypath (int *,char*) ;
 int git_index_write (int *) ;
 int git_repository_index (int **,int ) ;
 int git_status_list_entrycount (int *) ;
 int git_status_list_free (int *) ;
 int git_status_list_new (int **,int ,TYPE_1__*) ;
 char* nfc ;
 char* nfd ;
 int rename_file (int ,char*,char*) ;

void test_status_renames__precomposed_unicode_toggle_is_rename(void)
{
}

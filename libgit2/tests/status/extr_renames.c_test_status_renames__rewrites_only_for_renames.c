
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct status_entry {char* member_1; char* member_2; int member_0; } ;
struct TYPE_4__ {int flags; } ;
typedef TYPE_1__ git_status_options ;
typedef int git_status_list ;
typedef int git_index ;


 TYPE_1__ GIT_STATUS_OPTIONS_INIT ;
 int GIT_STATUS_OPT_INCLUDE_UNTRACKED ;
 int GIT_STATUS_OPT_RENAMES_FROM_REWRITES ;
 int GIT_STATUS_OPT_RENAMES_HEAD_TO_INDEX ;
 int GIT_STATUS_OPT_RENAMES_INDEX_TO_WORKDIR ;
 int GIT_STATUS_WT_MODIFIED ;
 int check_status (int *,struct status_entry*,int) ;
 int cl_git_pass (int ) ;
 int cl_git_rewritefile (char*,char*) ;
 int g_repo ;
 int git_index_free (int *) ;
 int git_repository_index (int **,int ) ;
 int git_status_list_free (int *) ;
 int git_status_list_new (int **,int ,TYPE_1__*) ;

void test_status_renames__rewrites_only_for_renames(void)
{
 git_index *index;
 git_status_list *statuslist;
 git_status_options opts = GIT_STATUS_OPTIONS_INIT;
 struct status_entry expected[] = {
  { GIT_STATUS_WT_MODIFIED, "ikeepsix.txt", "ikeepsix.txt" },
 };

 opts.flags |= GIT_STATUS_OPT_INCLUDE_UNTRACKED;
 opts.flags |= GIT_STATUS_OPT_RENAMES_HEAD_TO_INDEX;
 opts.flags |= GIT_STATUS_OPT_RENAMES_INDEX_TO_WORKDIR;
 opts.flags |= GIT_STATUS_OPT_RENAMES_FROM_REWRITES;

 cl_git_pass(git_repository_index(&index, g_repo));

 cl_git_rewritefile("renames/ikeepsix.txt",
  "This is enough content for the file to be rewritten.\n" "This is enough content for the file to be rewritten.\n" "This is enough content for the file to be rewritten.\n" "This is enough content for the file to be rewritten.\n" "This is enough content for the file to be rewritten.\n" "This is enough content for the file to be rewritten.\n" "This is enough content for the file to be rewritten.\n" "This is enough content for the file to be rewritten.\n" "This is enough content for the file to be rewritten.\n" "This is enough content for the file to be rewritten.\n" "This is enough content for the file to be rewritten.\n" "This is enough content for the file to be rewritten.\n" "This is enough content for the file to be rewritten.\n" "This is enough content for the file to be rewritten.\n" "This is enough content for the file to be rewritten.\n" "This is enough content for the file to be rewritten.\n");
 cl_git_pass(git_status_list_new(&statuslist, g_repo, &opts));
 check_status(statuslist, expected, 1);
 git_status_list_free(statuslist);

 git_index_free(index);
}

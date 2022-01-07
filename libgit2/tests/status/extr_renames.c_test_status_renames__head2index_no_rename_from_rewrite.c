
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


 int GIT_STATUS_INDEX_MODIFIED ;
 TYPE_1__ GIT_STATUS_OPTIONS_INIT ;
 int GIT_STATUS_OPT_RENAMES_HEAD_TO_INDEX ;
 int check_status (int *,struct status_entry*,int) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_index_add_bypath (int *,char*) ;
 int git_index_free (int *) ;
 int git_index_write (int *) ;
 int git_repository_index (int **,int ) ;
 int git_status_list_free (int *) ;
 int git_status_list_new (int **,int ,TYPE_1__*) ;
 int rename_file (int ,char*,char*) ;

void test_status_renames__head2index_no_rename_from_rewrite(void)
{
 git_index *index;
 git_status_list *statuslist;
 git_status_options opts = GIT_STATUS_OPTIONS_INIT;
 struct status_entry expected[] = {
  { GIT_STATUS_INDEX_MODIFIED, "ikeepsix.txt", "ikeepsix.txt" },
  { GIT_STATUS_INDEX_MODIFIED, "sixserving.txt", "sixserving.txt" },
 };

 opts.flags |= GIT_STATUS_OPT_RENAMES_HEAD_TO_INDEX;

 cl_git_pass(git_repository_index(&index, g_repo));

 rename_file(g_repo, "ikeepsix.txt", "_temp_.txt");
 rename_file(g_repo, "sixserving.txt", "ikeepsix.txt");
 rename_file(g_repo, "_temp_.txt", "sixserving.txt");

 cl_git_pass(git_index_add_bypath(index, "ikeepsix.txt"));
 cl_git_pass(git_index_add_bypath(index, "sixserving.txt"));
 cl_git_pass(git_index_write(index));

 cl_git_pass(git_status_list_new(&statuslist, g_repo, &opts));
 check_status(statuslist, expected, 2);
 git_status_list_free(statuslist);

 git_index_free(index);
}

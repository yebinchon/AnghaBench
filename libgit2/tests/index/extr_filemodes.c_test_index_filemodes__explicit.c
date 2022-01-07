
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_index ;


 int GIT_FILEMODE_BLOB ;
 int GIT_FILEMODE_BLOB_EXECUTABLE ;
 int add_entry_and_check_mode (int *,int,int ) ;
 int cl_git_pass (int ) ;
 int cl_repo_set_bool (int ,char*,int) ;
 int g_repo ;
 int git_index_free (int *) ;
 int git_repository_index (int **,int ) ;

void test_index_filemodes__explicit(void)
{
 git_index *index;




 cl_repo_set_bool(g_repo, "core.filemode", 0);

 cl_git_pass(git_repository_index(&index, g_repo));



 add_entry_and_check_mode(index, 1, GIT_FILEMODE_BLOB);


 add_entry_and_check_mode(index, 1, GIT_FILEMODE_BLOB_EXECUTABLE);


 add_entry_and_check_mode(index, 1, GIT_FILEMODE_BLOB);


 add_entry_and_check_mode(index, 0, GIT_FILEMODE_BLOB_EXECUTABLE);


 add_entry_and_check_mode(index, 0, GIT_FILEMODE_BLOB);

 git_index_free(index);
}

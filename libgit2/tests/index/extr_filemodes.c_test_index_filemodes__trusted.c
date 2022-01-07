
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_index ;


 int GIT_FILEMODE_BLOB ;
 int GIT_FILEMODE_BLOB_EXECUTABLE ;
 int GIT_INDEX_CAPABILITY_NO_FILEMODE ;
 int O_CREAT ;
 int O_TRUNC ;
 int O_WRONLY ;
 int add_and_check_mode (int *,char*,int ) ;
 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 int cl_git_write2file (char*,char*,int ,int,int) ;
 int cl_is_chmod_supported () ;
 int cl_repo_set_bool (int ,char*,int) ;
 int g_repo ;
 int git_index_caps (int *) ;
 int git_index_free (int *) ;
 int git_repository_index (int **,int ) ;
 int replace_file_with_mode (char*,char*,int) ;

void test_index_filemodes__trusted(void)
{
 git_index *index;




 if (!cl_is_chmod_supported())
  return;

 cl_repo_set_bool(g_repo, "core.filemode", 1);

 cl_git_pass(git_repository_index(&index, g_repo));
 cl_assert((git_index_caps(index) & GIT_INDEX_CAPABILITY_NO_FILEMODE) == 0);


 replace_file_with_mode("exec_off", "filemodes/exec_off.0", 0644);
 add_and_check_mode(index, "exec_off", GIT_FILEMODE_BLOB);


 replace_file_with_mode("exec_on", "filemodes/exec_on.0", 0644);
 add_and_check_mode(index, "exec_on", GIT_FILEMODE_BLOB);


 replace_file_with_mode("exec_off", "filemodes/exec_off.1", 0755);
 add_and_check_mode(index, "exec_off", GIT_FILEMODE_BLOB_EXECUTABLE);


 replace_file_with_mode("exec_on", "filemodes/exec_on.1", 0755);
 add_and_check_mode(index, "exec_on", GIT_FILEMODE_BLOB_EXECUTABLE);


 cl_git_write2file("filemodes/new_off", "blah", 0,
  O_WRONLY | O_CREAT | O_TRUNC, 0644);
 add_and_check_mode(index, "new_off", GIT_FILEMODE_BLOB);


 cl_git_write2file("filemodes/new_on", "blah", 0,
  O_WRONLY | O_CREAT | O_TRUNC, 0755);
 add_and_check_mode(index, "new_on", GIT_FILEMODE_BLOB_EXECUTABLE);

 git_index_free(index);
}

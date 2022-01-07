
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_RMDIR_REMOVE_FILES ;
 int TEMP_REPO_FOLDER ;
 int ceiling_dirs ;
 int cl_git_pass (int ) ;
 int discovered ;
 int git_buf_dispose (int *) ;
 int git_futils_rmdir_r (int ,int *,int ) ;

void test_repo_discover__cleanup(void)
{
 git_buf_dispose(&discovered);
 git_buf_dispose(&ceiling_dirs);
 cl_git_pass(git_futils_rmdir_r(TEMP_REPO_FOLDER, ((void*)0), GIT_RMDIR_REMOVE_FILES));
}

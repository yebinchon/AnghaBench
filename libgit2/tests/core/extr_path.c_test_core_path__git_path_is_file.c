
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_PATH_FS_HFS ;
 int GIT_PATH_GITFILE_GITATTRIBUTES ;
 int GIT_PATH_GITFILE_GITIGNORE ;
 int GIT_PATH_GITFILE_GITMODULES ;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 int git_path_is_gitfile (char*,int,int,int ) ;

void test_core_path__git_path_is_file(void)
{
 cl_git_fail(git_path_is_gitfile("blob", 4, -1, GIT_PATH_FS_HFS));
 cl_git_pass(git_path_is_gitfile("blob", 4, GIT_PATH_GITFILE_GITIGNORE, GIT_PATH_FS_HFS));
 cl_git_pass(git_path_is_gitfile("blob", 4, GIT_PATH_GITFILE_GITMODULES, GIT_PATH_FS_HFS));
 cl_git_pass(git_path_is_gitfile("blob", 4, GIT_PATH_GITFILE_GITATTRIBUTES, GIT_PATH_FS_HFS));
 cl_git_fail(git_path_is_gitfile("blob", 4, 3, GIT_PATH_FS_HFS));
}

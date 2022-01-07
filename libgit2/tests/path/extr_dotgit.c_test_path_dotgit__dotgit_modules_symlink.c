
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_PATH_REJECT_DOT_GIT_HFS ;
 int GIT_PATH_REJECT_DOT_GIT_NTFS ;
 int S_IFLNK ;
 int cl_assert_equal_b (int,int ) ;
 int git_path_isvalid (int *,char*,int ,int) ;

void test_path_dotgit__dotgit_modules_symlink(void)
{
 cl_assert_equal_b(1, git_path_isvalid(((void*)0), ".gitmodules", 0, GIT_PATH_REJECT_DOT_GIT_HFS|GIT_PATH_REJECT_DOT_GIT_NTFS));
 cl_assert_equal_b(0, git_path_isvalid(((void*)0), ".gitmodules", S_IFLNK, GIT_PATH_REJECT_DOT_GIT_HFS));
 cl_assert_equal_b(0, git_path_isvalid(((void*)0), ".gitmodules", S_IFLNK, GIT_PATH_REJECT_DOT_GIT_NTFS));
}

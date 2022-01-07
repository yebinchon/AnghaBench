
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_PATH_REJECT_DOT_GIT_NTFS ;
 int cl_assert_equal_b (int,int ) ;
 int git_path_isvalid (int *,char*,int ,int ) ;

void test_path_core__isvalid_dotgit_ntfs(void)
{
 cl_assert_equal_b(1, git_path_isvalid(((void*)0), ".git", 0, 0));
 cl_assert_equal_b(1, git_path_isvalid(((void*)0), ".git ", 0, 0));
 cl_assert_equal_b(1, git_path_isvalid(((void*)0), ".git.", 0, 0));
 cl_assert_equal_b(1, git_path_isvalid(((void*)0), ".git.. .", 0, 0));

 cl_assert_equal_b(1, git_path_isvalid(((void*)0), "git~1", 0, 0));
 cl_assert_equal_b(1, git_path_isvalid(((void*)0), "git~1 ", 0, 0));
 cl_assert_equal_b(1, git_path_isvalid(((void*)0), "git~1.", 0, 0));
 cl_assert_equal_b(1, git_path_isvalid(((void*)0), "git~1.. .", 0, 0));

 cl_assert_equal_b(0, git_path_isvalid(((void*)0), ".git", 0, GIT_PATH_REJECT_DOT_GIT_NTFS));
 cl_assert_equal_b(0, git_path_isvalid(((void*)0), ".git ", 0, GIT_PATH_REJECT_DOT_GIT_NTFS));
 cl_assert_equal_b(0, git_path_isvalid(((void*)0), ".git.", 0, GIT_PATH_REJECT_DOT_GIT_NTFS));
 cl_assert_equal_b(0, git_path_isvalid(((void*)0), ".git.. .", 0, GIT_PATH_REJECT_DOT_GIT_NTFS));

 cl_assert_equal_b(0, git_path_isvalid(((void*)0), "git~1", 0, GIT_PATH_REJECT_DOT_GIT_NTFS));
 cl_assert_equal_b(0, git_path_isvalid(((void*)0), "git~1 ", 0, GIT_PATH_REJECT_DOT_GIT_NTFS));
 cl_assert_equal_b(0, git_path_isvalid(((void*)0), "git~1.", 0, GIT_PATH_REJECT_DOT_GIT_NTFS));
 cl_assert_equal_b(0, git_path_isvalid(((void*)0), "git~1.. .", 0, GIT_PATH_REJECT_DOT_GIT_NTFS));
}

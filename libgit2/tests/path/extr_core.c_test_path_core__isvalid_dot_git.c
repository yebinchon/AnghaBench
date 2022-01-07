
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_PATH_REJECT_DOT_GIT_LITERAL ;
 int cl_assert_equal_b (int,int ) ;
 int git_path_isvalid (int *,char*,int ,int ) ;

void test_path_core__isvalid_dot_git(void)
{
 cl_assert_equal_b(1, git_path_isvalid(((void*)0), ".git", 0, 0));
 cl_assert_equal_b(1, git_path_isvalid(((void*)0), ".git/foo", 0, 0));
 cl_assert_equal_b(1, git_path_isvalid(((void*)0), "foo/.git", 0, 0));
 cl_assert_equal_b(1, git_path_isvalid(((void*)0), "foo/.git/bar", 0, 0));
 cl_assert_equal_b(1, git_path_isvalid(((void*)0), "foo/.GIT/bar", 0, 0));
 cl_assert_equal_b(1, git_path_isvalid(((void*)0), "foo/bar/.Git", 0, 0));

 cl_assert_equal_b(0, git_path_isvalid(((void*)0), ".git", 0, GIT_PATH_REJECT_DOT_GIT_LITERAL));
 cl_assert_equal_b(0, git_path_isvalid(((void*)0), ".git/foo", 0, GIT_PATH_REJECT_DOT_GIT_LITERAL));
 cl_assert_equal_b(0, git_path_isvalid(((void*)0), "foo/.git", 0, GIT_PATH_REJECT_DOT_GIT_LITERAL));
 cl_assert_equal_b(0, git_path_isvalid(((void*)0), "foo/.git/bar", 0, GIT_PATH_REJECT_DOT_GIT_LITERAL));
 cl_assert_equal_b(0, git_path_isvalid(((void*)0), "foo/.GIT/bar", 0, GIT_PATH_REJECT_DOT_GIT_LITERAL));
 cl_assert_equal_b(0, git_path_isvalid(((void*)0), "foo/bar/.Git", 0, GIT_PATH_REJECT_DOT_GIT_LITERAL));

 cl_assert_equal_b(1, git_path_isvalid(((void*)0), "!git", 0, 0));
 cl_assert_equal_b(1, git_path_isvalid(((void*)0), "foo/!git", 0, 0));
 cl_assert_equal_b(1, git_path_isvalid(((void*)0), "!git/bar", 0, 0));
 cl_assert_equal_b(1, git_path_isvalid(((void*)0), ".tig", 0, 0));
 cl_assert_equal_b(1, git_path_isvalid(((void*)0), "foo/.tig", 0, 0));
 cl_assert_equal_b(1, git_path_isvalid(((void*)0), ".tig/bar", 0, 0));
}

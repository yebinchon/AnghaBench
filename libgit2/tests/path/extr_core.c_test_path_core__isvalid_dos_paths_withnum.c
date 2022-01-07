
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_PATH_REJECT_DOS_PATHS ;
 int cl_assert_equal_b (int,int ) ;
 int git_path_isvalid (int *,char*,int ,int ) ;

void test_path_core__isvalid_dos_paths_withnum(void)
{
 cl_assert_equal_b(1, git_path_isvalid(((void*)0), "com1", 0, 0));
 cl_assert_equal_b(1, git_path_isvalid(((void*)0), "com1.", 0, 0));
 cl_assert_equal_b(1, git_path_isvalid(((void*)0), "com1:", 0, 0));
 cl_assert_equal_b(1, git_path_isvalid(((void*)0), "com1.asdf", 0, 0));
 cl_assert_equal_b(1, git_path_isvalid(((void*)0), "com1.asdf\\zippy", 0, 0));
 cl_assert_equal_b(1, git_path_isvalid(((void*)0), "com1:asdf\\foobar", 0, 0));
 cl_assert_equal_b(1, git_path_isvalid(((void*)0), "com1\\foo", 0, 0));
 cl_assert_equal_b(1, git_path_isvalid(((void*)0), "lpt1", 0, 0));

 cl_assert_equal_b(0, git_path_isvalid(((void*)0), "com1", 0, GIT_PATH_REJECT_DOS_PATHS));
 cl_assert_equal_b(0, git_path_isvalid(((void*)0), "com1.", 0, GIT_PATH_REJECT_DOS_PATHS));
 cl_assert_equal_b(0, git_path_isvalid(((void*)0), "com1:", 0, GIT_PATH_REJECT_DOS_PATHS));
 cl_assert_equal_b(0, git_path_isvalid(((void*)0), "com1.asdf", 0, GIT_PATH_REJECT_DOS_PATHS));
 cl_assert_equal_b(0, git_path_isvalid(((void*)0), "com1.asdf\\zippy", 0, GIT_PATH_REJECT_DOS_PATHS));
 cl_assert_equal_b(0, git_path_isvalid(((void*)0), "com1:asdf\\foobar", 0, GIT_PATH_REJECT_DOS_PATHS));
 cl_assert_equal_b(0, git_path_isvalid(((void*)0), "com1/foo", 0, GIT_PATH_REJECT_DOS_PATHS));
 cl_assert_equal_b(0, git_path_isvalid(((void*)0), "lpt1", 0, GIT_PATH_REJECT_DOS_PATHS));

 cl_assert_equal_b(1, git_path_isvalid(((void*)0), "com0", 0, 0));
 cl_assert_equal_b(1, git_path_isvalid(((void*)0), "com0", 0, GIT_PATH_REJECT_DOS_PATHS));
 cl_assert_equal_b(1, git_path_isvalid(((void*)0), "com10", 0, 0));
 cl_assert_equal_b(1, git_path_isvalid(((void*)0), "com10", 0, GIT_PATH_REJECT_DOS_PATHS));
 cl_assert_equal_b(1, git_path_isvalid(((void*)0), "comn", 0, GIT_PATH_REJECT_DOS_PATHS));
 cl_assert_equal_b(1, git_path_isvalid(((void*)0), "com1\\foo", 0, GIT_PATH_REJECT_DOS_PATHS));
 cl_assert_equal_b(1, git_path_isvalid(((void*)0), "lpt0", 0, GIT_PATH_REJECT_DOS_PATHS));
 cl_assert_equal_b(1, git_path_isvalid(((void*)0), "lpt10", 0, GIT_PATH_REJECT_DOS_PATHS));
 cl_assert_equal_b(1, git_path_isvalid(((void*)0), "lptn", 0, GIT_PATH_REJECT_DOS_PATHS));
}

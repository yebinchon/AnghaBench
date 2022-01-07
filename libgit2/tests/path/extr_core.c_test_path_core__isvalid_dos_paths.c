
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_PATH_REJECT_DOS_PATHS ;
 int cl_assert_equal_b (int,int ) ;
 int git_path_isvalid (int *,char*,int ,int ) ;

void test_path_core__isvalid_dos_paths(void)
{
 cl_assert_equal_b(1, git_path_isvalid(((void*)0), "aux", 0, 0));
 cl_assert_equal_b(1, git_path_isvalid(((void*)0), "aux.", 0, 0));
 cl_assert_equal_b(1, git_path_isvalid(((void*)0), "aux:", 0, 0));
 cl_assert_equal_b(1, git_path_isvalid(((void*)0), "aux.asdf", 0, 0));
 cl_assert_equal_b(1, git_path_isvalid(((void*)0), "aux.asdf\\zippy", 0, 0));
 cl_assert_equal_b(1, git_path_isvalid(((void*)0), "aux:asdf\\foobar", 0, 0));
 cl_assert_equal_b(1, git_path_isvalid(((void*)0), "con", 0, 0));
 cl_assert_equal_b(1, git_path_isvalid(((void*)0), "prn", 0, 0));
 cl_assert_equal_b(1, git_path_isvalid(((void*)0), "nul", 0, 0));

 cl_assert_equal_b(0, git_path_isvalid(((void*)0), "aux", 0, GIT_PATH_REJECT_DOS_PATHS));
 cl_assert_equal_b(0, git_path_isvalid(((void*)0), "aux.", 0, GIT_PATH_REJECT_DOS_PATHS));
 cl_assert_equal_b(0, git_path_isvalid(((void*)0), "aux:", 0, GIT_PATH_REJECT_DOS_PATHS));
 cl_assert_equal_b(0, git_path_isvalid(((void*)0), "aux.asdf", 0, GIT_PATH_REJECT_DOS_PATHS));
 cl_assert_equal_b(0, git_path_isvalid(((void*)0), "aux.asdf\\zippy", 0, GIT_PATH_REJECT_DOS_PATHS));
 cl_assert_equal_b(0, git_path_isvalid(((void*)0), "aux:asdf\\foobar", 0, GIT_PATH_REJECT_DOS_PATHS));
 cl_assert_equal_b(0, git_path_isvalid(((void*)0), "con", 0, GIT_PATH_REJECT_DOS_PATHS));
 cl_assert_equal_b(0, git_path_isvalid(((void*)0), "prn", 0, GIT_PATH_REJECT_DOS_PATHS));
 cl_assert_equal_b(0, git_path_isvalid(((void*)0), "nul", 0, GIT_PATH_REJECT_DOS_PATHS));

 cl_assert_equal_b(1, git_path_isvalid(((void*)0), "aux1", 0, 0));
 cl_assert_equal_b(1, git_path_isvalid(((void*)0), "aux1", 0, GIT_PATH_REJECT_DOS_PATHS));
 cl_assert_equal_b(1, git_path_isvalid(((void*)0), "auxn", 0, GIT_PATH_REJECT_DOS_PATHS));
 cl_assert_equal_b(1, git_path_isvalid(((void*)0), "aux\\foo", 0, GIT_PATH_REJECT_DOS_PATHS));
}

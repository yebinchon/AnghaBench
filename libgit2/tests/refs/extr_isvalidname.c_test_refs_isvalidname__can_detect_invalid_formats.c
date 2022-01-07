
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_assert_equal_i (int,int ) ;
 int git_reference_is_valid_name (char*) ;

void test_refs_isvalidname__can_detect_invalid_formats(void)
{
 cl_assert_equal_i(0, git_reference_is_valid_name("refs/tags/0.17.0^{}"));
 cl_assert_equal_i(0, git_reference_is_valid_name("TWO/LEVELS"));
 cl_assert_equal_i(0, git_reference_is_valid_name("ONE.LEVEL"));
 cl_assert_equal_i(0, git_reference_is_valid_name("HEAD/"));
 cl_assert_equal_i(0, git_reference_is_valid_name("NO_TRAILING_UNDERSCORE_"));
 cl_assert_equal_i(0, git_reference_is_valid_name("_NO_LEADING_UNDERSCORE"));
 cl_assert_equal_i(0, git_reference_is_valid_name("HEAD/aa"));
 cl_assert_equal_i(0, git_reference_is_valid_name("lower_case"));
 cl_assert_equal_i(0, git_reference_is_valid_name("/stupid/name/master"));
 cl_assert_equal_i(0, git_reference_is_valid_name("/"));
 cl_assert_equal_i(0, git_reference_is_valid_name("//"));
 cl_assert_equal_i(0, git_reference_is_valid_name(""));
 cl_assert_equal_i(0, git_reference_is_valid_name("refs/heads/sub.lock/webmatrix"));
}

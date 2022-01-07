
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_assert_equal_i (int,int ) ;
 int git_reference_is_valid_name (char*) ;

void test_refs_isvalidname__wont_hopefully_choke_on_valid_formats(void)
{
 cl_assert_equal_i(1, git_reference_is_valid_name("refs/tags/0.17.0"));
 cl_assert_equal_i(1, git_reference_is_valid_name("refs/LEVELS"));
 cl_assert_equal_i(1, git_reference_is_valid_name("HEAD"));
 cl_assert_equal_i(1, git_reference_is_valid_name("ONE_LEVEL"));
 cl_assert_equal_i(1, git_reference_is_valid_name("refs/stash"));
 cl_assert_equal_i(1, git_reference_is_valid_name("refs/remotes/origin/bim_with_3d@11296"));
 cl_assert_equal_i(1, git_reference_is_valid_name("refs/master{yesterday"));
 cl_assert_equal_i(1, git_reference_is_valid_name("refs/master}yesterday"));
 cl_assert_equal_i(1, git_reference_is_valid_name("refs/master{yesterday}"));
}

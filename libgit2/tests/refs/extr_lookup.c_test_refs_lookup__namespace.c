
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_reference ;


 int GIT_EINVALIDSPEC ;
 int GIT_ENOTFOUND ;
 int cl_assert_equal_i (int,int ) ;
 int g_repo ;
 int git_reference_lookup (int **,int ,char*) ;

void test_refs_lookup__namespace(void)
{
 int error;
 git_reference *ref;

 error = git_reference_lookup(&ref, g_repo, "refs/heads");
 cl_assert_equal_i(error, GIT_ENOTFOUND);

 error = git_reference_lookup(&ref, g_repo, "refs/heads/");
 cl_assert_equal_i(error, GIT_EINVALIDSPEC);
}

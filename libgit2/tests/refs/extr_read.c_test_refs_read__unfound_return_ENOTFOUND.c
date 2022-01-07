
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_reference ;
typedef int git_oid ;


 int GIT_ENOTFOUND ;
 int cl_assert_equal_i (int ,int ) ;
 int g_repo ;
 int git_reference_lookup (int **,int ,char*) ;
 int git_reference_name_to_id (int *,int ,char*) ;

void test_refs_read__unfound_return_ENOTFOUND(void)
{
 git_reference *reference;
 git_oid id;

 cl_assert_equal_i(GIT_ENOTFOUND,
  git_reference_lookup(&reference, g_repo, "TEST_MASTER"));
 cl_assert_equal_i(GIT_ENOTFOUND,
  git_reference_lookup(&reference, g_repo, "refs/test/master"));
 cl_assert_equal_i(GIT_ENOTFOUND,
  git_reference_lookup(&reference, g_repo, "refs/tags/test/master"));
 cl_assert_equal_i(GIT_ENOTFOUND,
  git_reference_lookup(&reference, g_repo, "refs/tags/test/farther/master"));

 cl_assert_equal_i(GIT_ENOTFOUND,
  git_reference_name_to_id(&id, g_repo, "refs/tags/test/farther/master"));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_revspec ;


 int GIT_EINVALIDSPEC ;
 int cl_assert_equal_i (int ,int ) ;
 int g_repo ;
 int git_revparse (int *,int ,char const*) ;

__attribute__((used)) static void test_invalid_revspec(const char* invalid_spec)
{
 git_revspec revspec;

 cl_assert_equal_i(
  GIT_EINVALIDSPEC, git_revparse(&revspec, g_repo, invalid_spec));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_EINVALIDSPEC ;
 int cl_assert_equal_i (int ,int ) ;
 int g_obj ;
 int g_repo ;
 int git_revparse_single (int *,int ,char const*) ;

__attribute__((used)) static void assert_invalid_single_spec(const char *invalid_spec)
{
 cl_assert_equal_i(
  GIT_EINVALIDSPEC, git_revparse_single(&g_obj, g_repo, invalid_spec));
}

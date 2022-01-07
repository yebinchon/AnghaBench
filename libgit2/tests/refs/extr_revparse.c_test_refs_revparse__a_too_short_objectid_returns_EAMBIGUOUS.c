
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_EAMBIGUOUS ;
 int cl_assert_equal_i (int ,int ) ;
 int g_obj ;
 int g_repo ;
 int git_revparse_single (int *,int ,char*) ;

void test_refs_revparse__a_too_short_objectid_returns_EAMBIGUOUS(void)
{
 cl_assert_equal_i(
  GIT_EAMBIGUOUS, git_revparse_single(&g_obj, g_repo, "e90"));
}

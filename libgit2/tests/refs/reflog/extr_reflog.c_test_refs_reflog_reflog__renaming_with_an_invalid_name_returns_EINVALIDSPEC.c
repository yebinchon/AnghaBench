
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_EINVALIDSPEC ;
 int cl_assert_equal_i (int ,int ) ;
 int g_repo ;
 int git_reflog_rename (int ,char*,char*) ;

void test_refs_reflog_reflog__renaming_with_an_invalid_name_returns_EINVALIDSPEC(void)
{
 cl_assert_equal_i(GIT_EINVALIDSPEC,
     git_reflog_rename(g_repo, "refs/heads/master", "refs/heads/Inv@{id"));
}

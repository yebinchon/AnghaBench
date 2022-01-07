
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_EINVALIDSPEC ;
 int cl_assert_equal_i (int ,int ) ;
 int g_repo ;
 int git_tag_delete (int ,char*) ;

void test_object_tag_write__deleting_with_an_invalid_name_returns_EINVALIDSPEC(void)
{
 cl_assert_equal_i(GIT_EINVALIDSPEC, git_tag_delete(g_repo, "Inv@{id"));
}

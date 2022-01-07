
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_EPEEL ;
 int assert_invalid_single_spec (char*) ;
 int cl_assert_equal_i (int ,int ) ;
 int g_obj ;
 int g_repo ;
 int git_revparse_single (int *,int ,char*) ;
 int test_object (char*,char*) ;

void test_refs_revparse__to_type(void)
{
 assert_invalid_single_spec("wrapped_tag^{trip}");
 test_object("point_to_blob^{commit}", ((void*)0));
 cl_assert_equal_i(
  GIT_EPEEL, git_revparse_single(&g_obj, g_repo, "wrapped_tag^{blob}"));

 test_object("wrapped_tag^{commit}", "a65fedf39aefe402d3bb6e24df4d4f5fe4547750");
 test_object("wrapped_tag^{tree}", "944c0f6e4dfa41595e6eb3ceecdb14f50fe18162");
 test_object("point_to_blob^{blob}", "1385f264afb75a56a5bec74243be9b367ba4ca08");
 test_object("master^{commit}^{commit}", "a65fedf39aefe402d3bb6e24df4d4f5fe4547750");
}

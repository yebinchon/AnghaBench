
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_object ;


 int GIT_OBJECT_BLOB ;
 int cl_assert_equal_oid (int ,int ) ;
 int cl_git_pass (int ) ;
 int g_actualobject ;
 int g_expectedobject ;
 scalar_t__ g_head_commit ;
 int git_object_id (int ) ;
 int git_object_lookup_bypath (int *,int *,char*,int ) ;

void test_object_lookupbypath__from_head_commit(void)
{
 cl_git_pass(git_object_lookup_bypath(&g_actualobject, (git_object*)g_head_commit,
    "subdir/subdir_test2.txt", GIT_OBJECT_BLOB));
 cl_assert_equal_oid(git_object_id(g_expectedobject),
    git_object_id(g_actualobject));
}

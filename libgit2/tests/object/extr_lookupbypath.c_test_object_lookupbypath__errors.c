
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_object ;


 int GIT_EINVALIDSPEC ;
 int GIT_ENOTFOUND ;
 int GIT_OBJECT_ANY ;
 int GIT_OBJECT_TREE ;
 int cl_assert_equal_i (int ,int ) ;
 int g_actualobject ;
 scalar_t__ g_root_tree ;
 int git_object_lookup_bypath (int *,int *,char*,int ) ;

void test_object_lookupbypath__errors(void)
{
 cl_assert_equal_i(GIT_EINVALIDSPEC,
   git_object_lookup_bypath(&g_actualobject, (git_object*)g_root_tree,
    "subdir/subdir_test2.txt", GIT_OBJECT_TREE));
 cl_assert_equal_i(GIT_ENOTFOUND,
   git_object_lookup_bypath(&g_actualobject, (git_object*)g_root_tree,
    "file/doesnt/exist", GIT_OBJECT_ANY));
}

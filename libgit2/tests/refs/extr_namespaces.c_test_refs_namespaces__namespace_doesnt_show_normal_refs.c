
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int count; } ;
typedef TYPE_1__ git_strarray ;


 int cl_assert_equal_i (int ,int ) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_reference_list (TYPE_1__*,int ) ;
 int git_repository_set_namespace (int ,char*) ;
 int git_strarray_free (TYPE_1__*) ;

void test_refs_namespaces__namespace_doesnt_show_normal_refs(void)
{
 static git_strarray ref_list;

 cl_git_pass(git_repository_set_namespace(g_repo, "namespace"));
 cl_git_pass(git_reference_list(&ref_list, g_repo));
 cl_assert_equal_i(0, ref_list.count);
 git_strarray_free(&ref_list);
}

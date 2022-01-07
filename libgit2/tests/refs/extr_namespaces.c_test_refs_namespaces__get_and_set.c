
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_assert_equal_s (char*,int ) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_repository_get_namespace (int ) ;
 int git_repository_set_namespace (int ,char*) ;

void test_refs_namespaces__get_and_set(void)
{
 cl_assert_equal_s(((void*)0), git_repository_get_namespace(g_repo));

 cl_git_pass(git_repository_set_namespace(g_repo, "namespace"));
 cl_assert_equal_s("namespace", git_repository_get_namespace(g_repo));

 cl_git_pass(git_repository_set_namespace(g_repo, ((void*)0)));
 cl_assert_equal_s(((void*)0), git_repository_get_namespace(g_repo));
}

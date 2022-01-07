
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_git_sandbox_init (char*) ;
 int g_repo ;

void test_refs_namespaces__initialize(void)
{
 g_repo = cl_git_sandbox_init("testrepo");
}

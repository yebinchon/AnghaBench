
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * branch ;
 int cl_git_sandbox_init (char*) ;
 int repo ;
 int * target ;

void test_refs_branches_create__initialize(void)
{
 repo = cl_git_sandbox_init("testrepo.git");
 branch = ((void*)0);
 target = ((void*)0);
}

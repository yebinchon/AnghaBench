
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_git_sandbox_init (char*) ;
 int repo ;
 int * tree ;

void test_repo_headtree__initialize(void)
{
 repo = cl_git_sandbox_init("testrepo.git");
 tree = ((void*)0);
}

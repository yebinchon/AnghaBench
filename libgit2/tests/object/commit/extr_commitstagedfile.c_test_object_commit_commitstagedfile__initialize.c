
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_assert (int ) ;
 int cl_fixture (char*) ;
 int cl_git_pass (int ) ;
 int git_repository_init (int **,char*,int ) ;
 int * repo ;

void test_object_commit_commitstagedfile__initialize(void)
{
 cl_fixture("treebuilder");
 cl_git_pass(git_repository_init(&repo, "treebuilder/", 0));
 cl_assert(repo != ((void*)0));
}

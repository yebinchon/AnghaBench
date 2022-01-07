
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_fixture_cleanup (char*) ;
 int git_repository_free (int *) ;
 int * repo ;

void test_object_commit_commitstagedfile__cleanup(void)
{
 git_repository_free(repo);
 repo = ((void*)0);

 cl_fixture_cleanup("treebuilder");
}

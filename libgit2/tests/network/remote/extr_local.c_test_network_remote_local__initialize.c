
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_assert (int ) ;
 int cl_git_pass (int ) ;
 int git_repository_init (int **,char*,int ) ;
 int git_repository_set_ident (int *,char*,char*) ;
 int * repo ;

void test_network_remote_local__initialize(void)
{
 cl_git_pass(git_repository_init(&repo, "remotelocal/", 0));
 cl_git_pass(git_repository_set_ident(repo, "Foo Bar", "foo@example.com"));
 cl_assert(repo != ((void*)0));
}

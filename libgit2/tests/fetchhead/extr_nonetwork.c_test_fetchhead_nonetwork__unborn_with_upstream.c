
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_remote ;


 int assert_master_for_merge ;
 int cl_fixture (char*) ;
 int cl_fixture_cleanup (char*) ;
 int cl_git_pass (int ) ;
 int cl_set_cleanup (int *,char*) ;
 int cleanup_repository ;
 int g_repo ;
 int git_clone (int **,char*,char*,int *) ;
 int git_remote_fetch (int *,int *,int *,int *) ;
 int git_remote_free (int *) ;
 int git_remote_lookup (int **,int *,char*) ;
 int git_remote_set_url (int *,char*,int ) ;
 int git_repository_fetchhead_foreach (int *,int ,int *) ;
 int git_repository_free (int *) ;
 int git_repository_init (int *,char*,int ) ;

void test_fetchhead_nonetwork__unborn_with_upstream(void)
{
 git_repository *repo;
 git_remote *remote;


 cl_set_cleanup(&cleanup_repository, "./test1");
 cl_git_pass(git_repository_init(&g_repo, "./test1", 0));
 cl_set_cleanup(&cleanup_repository, "./repowithunborn");
 cl_git_pass(git_clone(&repo, "./test1", "./repowithunborn", ((void*)0)));


 cl_git_pass(git_remote_set_url(repo, "origin", cl_fixture("testrepo.git")));
 cl_git_pass(git_remote_lookup(&remote, repo, "origin"));

 cl_git_pass(git_remote_fetch(remote, ((void*)0), ((void*)0), ((void*)0)));
 git_remote_free(remote);

 cl_git_pass(git_repository_fetchhead_foreach(repo, assert_master_for_merge, ((void*)0)));

 git_repository_free(repo);
 cl_fixture_cleanup("./repowithunborn");
}

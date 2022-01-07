
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_remote ;
typedef int git_reference ;


 int cl_fixture (char*) ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_cleanup () ;
 int * cl_git_sandbox_init (char*) ;
 int git_reference_free (int *) ;
 int git_reference_symbolic_create (int **,int *,char*,char*,int ,int *) ;
 int git_remote_fetch (int *,int *,int *,int *) ;
 int git_remote_free (int *) ;
 int git_remote_lookup (int **,int *,char*) ;
 int git_remote_set_url (int *,char*,int ) ;

void test_fetchhead_nonetwork__fetch_into_repo_with_symrefs(void)
{
 git_repository *repo;
 git_remote *remote;
 git_reference *symref;

 repo = cl_git_sandbox_init("empty_standard_repo");





 cl_git_pass(git_reference_symbolic_create(&symref, repo, "refs/heads/symref", "refs/heads/master", 0, ((void*)0)));

 cl_git_pass(git_remote_set_url(repo, "origin", cl_fixture("testrepo.git")));
 cl_git_pass(git_remote_lookup(&remote, repo, "origin"));
 cl_git_pass(git_remote_fetch(remote, ((void*)0), ((void*)0), ((void*)0)));

 git_remote_free(remote);
 git_reference_free(symref);
 cl_git_sandbox_cleanup();
}

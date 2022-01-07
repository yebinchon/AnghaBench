
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char** member_0; int member_1; } ;
typedef TYPE_1__ git_strarray ;
typedef int git_repository ;
typedef int git_remote ;
typedef int git_reference ;


 int cl_fixture_cleanup (char*) ;
 int cl_git_fixture_url (char*) ;
 int cl_git_pass (int ) ;
 int git_reference_free (int *) ;
 int git_reference_lookup (int **,int *,char*) ;
 int git_remote_create_anonymous (int **,int *,int ) ;
 int git_remote_fetch (int *,TYPE_1__*,int *,int *) ;
 int git_remote_free (int *) ;
 int git_repository_free (int *) ;
 int git_repository_init (int **,char*,int) ;

void test_network_fetchlocal__all_refs(void)
{
 git_repository *repo;
 git_remote *remote;
 git_reference *ref;
 char *allrefs = "+refs/*:refs/*";
 git_strarray refspecs = {
  &allrefs,
  1,
 };

 cl_git_pass(git_repository_init(&repo, "./foo.git", 1));
 cl_git_pass(git_remote_create_anonymous(&remote, repo, cl_git_fixture_url("testrepo.git")));
 cl_git_pass(git_remote_fetch(remote, &refspecs, ((void*)0), ((void*)0)));

 cl_git_pass(git_reference_lookup(&ref, repo, "refs/remotes/test/master"));
 git_reference_free(ref);

 cl_git_pass(git_reference_lookup(&ref, repo, "refs/tags/test"));
 git_reference_free(ref);

 git_remote_free(remote);
 git_repository_free(repo);
 cl_fixture_cleanup("./foo.git");
}

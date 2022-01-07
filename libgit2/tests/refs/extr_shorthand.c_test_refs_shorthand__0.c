
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;


 int assert_shorthand (int *,char*,char*) ;
 int cl_fixture (char*) ;
 int cl_git_pass (int ) ;
 int git_repository_free (int *) ;
 int git_repository_open (int **,int ) ;

void test_refs_shorthand__0(void)
{
 git_repository *repo;

 cl_git_pass(git_repository_open(&repo, cl_fixture("testrepo.git")));


 assert_shorthand(repo, "refs/heads/master", "master");
 assert_shorthand(repo, "refs/tags/test", "test");
 assert_shorthand(repo, "refs/remotes/test/master", "test/master");
 assert_shorthand(repo, "refs/notes/fanout", "notes/fanout");

 git_repository_free(repo);
}

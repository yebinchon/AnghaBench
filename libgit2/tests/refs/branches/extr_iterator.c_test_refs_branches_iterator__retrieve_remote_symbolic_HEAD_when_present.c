
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct expectations {char* member_0; int member_1; } ;
typedef int git_branch_iterator ;


 int GIT_BRANCH_REMOTE ;
 int assert_branch_has_been_found (struct expectations*,char*) ;
 int assert_retrieval (int ,int) ;
 int cl_git_pass (int ) ;
 int contains_branches (struct expectations*,int *) ;
 int fake_remote ;
 int git_branch_iterator_free (int *) ;
 int git_branch_iterator_new (int **,int ,int ) ;
 int git_reference_free (int ) ;
 int git_reference_symbolic_create (int *,int ,char*,char*,int ,int *) ;
 int repo ;

void test_refs_branches_iterator__retrieve_remote_symbolic_HEAD_when_present(void)
{
 git_branch_iterator *iter;
 struct expectations exp[] = {
  { "nulltoken/HEAD", 0 },
  { "nulltoken/master", 0 },
  { ((void*)0), 0 }
 };

 git_reference_free(fake_remote);
 cl_git_pass(git_reference_symbolic_create(&fake_remote, repo, "refs/remotes/nulltoken/HEAD", "refs/remotes/nulltoken/master", 0, ((void*)0)));

 assert_retrieval(GIT_BRANCH_REMOTE, 3);

 cl_git_pass(git_branch_iterator_new(&iter, repo, GIT_BRANCH_REMOTE));
 contains_branches(exp, iter);
 git_branch_iterator_free(iter);

 assert_branch_has_been_found(exp, "nulltoken/HEAD");
 assert_branch_has_been_found(exp, "nulltoken/master");
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct expectations {char* member_0; int member_1; } ;
typedef int git_repository ;
typedef int git_branch_iterator ;


 int GIT_BRANCH_ALL ;
 int assert_branch_has_been_found (struct expectations*,char*) ;
 int cl_git_pass (int ) ;
 int * cl_git_sandbox_init (char*) ;
 int contains_branches (struct expectations*,int *) ;
 int git_branch_iterator_free (int *) ;
 int git_branch_iterator_new (int **,int *,int ) ;

void test_refs_branches_iterator__mix_of_packed_and_loose(void)
{
 git_branch_iterator *iter;
 struct expectations exp[] = {
  { "master", 0 },
  { "origin/HEAD", 0 },
  { "origin/master", 0 },
  { "origin/packed", 0 },
  { ((void*)0), 0 }
 };
 git_repository *r2;

 r2 = cl_git_sandbox_init("testrepo2");

 cl_git_pass(git_branch_iterator_new(&iter, r2, GIT_BRANCH_ALL));
 contains_branches(exp, iter);

 git_branch_iterator_free(iter);

 assert_branch_has_been_found(exp, "master");
 assert_branch_has_been_found(exp, "origin/HEAD");
 assert_branch_has_been_found(exp, "origin/master");
 assert_branch_has_been_found(exp, "origin/packed");
}

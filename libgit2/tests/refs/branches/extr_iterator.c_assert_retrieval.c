
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_reference ;
typedef int git_branch_t ;
typedef int git_branch_iterator ;


 int GIT_ITEROVER ;
 int cl_assert_equal_i (unsigned int,int) ;
 int cl_git_pass (int ) ;
 int git_branch_iterator_free (int *) ;
 int git_branch_iterator_new (int **,int ,unsigned int) ;
 int git_branch_next (int **,int *,int *) ;
 int git_reference_free (int *) ;
 int repo ;

__attribute__((used)) static void assert_retrieval(unsigned int flags, unsigned int expected_count)
{
 git_branch_iterator *iter;
 git_reference *ref;
 int count = 0, error;
 git_branch_t type;

 cl_git_pass(git_branch_iterator_new(&iter, repo, flags));
 while ((error = git_branch_next(&ref, &type, iter)) == 0) {
  count++;
  git_reference_free(ref);
 }

 git_branch_iterator_free(iter);
 cl_assert_equal_i(error, GIT_ITEROVER);
 cl_assert_equal_i(expected_count, count);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct expectations {int encounters; int branch_name; } ;
typedef int git_reference ;
typedef int git_branch_t ;
typedef int git_branch_iterator ;


 int GIT_ITEROVER ;
 int cl_assert_equal_i (int,int ) ;
 int git_branch_next (int **,int *,int *) ;
 int git_reference_free (int *) ;
 int git_reference_shorthand (int *) ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static void contains_branches(struct expectations exp[], git_branch_iterator *iter)
{
 git_reference *ref;
 git_branch_t type;
 int error, pos = 0;

 while ((error = git_branch_next(&ref, &type, iter)) == 0) {
  for (pos = 0; exp[pos].branch_name; ++pos) {
   if (strcmp(git_reference_shorthand(ref), exp[pos].branch_name) == 0)
    exp[pos].encounters++;
  }

  git_reference_free(ref);
 }

 cl_assert_equal_i(error, GIT_ITEROVER);
}

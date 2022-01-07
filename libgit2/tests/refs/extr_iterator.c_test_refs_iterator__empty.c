
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_reference_iterator ;
typedef int git_reference ;
typedef int git_odb ;


 int GIT_ITEROVER ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_git_pass (int ) ;
 int git_odb_free (int *) ;
 int git_odb_new (int **) ;
 int git_reference_iterator_free (int *) ;
 int git_reference_iterator_new (int **,int *) ;
 int git_reference_next (int **,int *) ;
 int git_repository_free (int *) ;
 int git_repository_wrap_odb (int **,int *) ;

void test_refs_iterator__empty(void)
{
 git_reference_iterator *iter;
 git_odb *odb;
 git_reference *ref;
 git_repository *empty;

 cl_git_pass(git_odb_new(&odb));
 cl_git_pass(git_repository_wrap_odb(&empty, odb));

 cl_git_pass(git_reference_iterator_new(&iter, empty));
 cl_assert_equal_i(GIT_ITEROVER, git_reference_next(&ref, iter));

 git_reference_iterator_free(iter);
 git_odb_free(odb);
 git_repository_free(empty);
}

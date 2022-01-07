
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_vector ;
typedef int git_reference_iterator ;
typedef int git_reference ;


 int GIT_ITEROVER ;
 int assert_all_refnames_match (int ,int *) ;
 int cl_git_pass (int) ;
 int git_reference_iterator_free (int *) ;
 int git_reference_iterator_new (int **,int ) ;
 int git_reference_next (int **,int *) ;
 int git_vector_init (int *,int,int *) ;
 int git_vector_insert (int *,int *) ;
 int refcmp_cb ;
 int refnames ;
 int repo ;

void test_refs_iterator__list(void)
{
 git_reference_iterator *iter;
 git_vector output;
 git_reference *ref;

 cl_git_pass(git_vector_init(&output, 33, &refcmp_cb));
 cl_git_pass(git_reference_iterator_new(&iter, repo));

 while (1) {
  int error = git_reference_next(&ref, iter);
  if (error == GIT_ITEROVER)
   break;
  cl_git_pass(error);
  cl_git_pass(git_vector_insert(&output, ref));
 }

 git_reference_iterator_free(iter);

 assert_all_refnames_match(refnames, &output);
}

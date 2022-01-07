
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_vector ;


 int assert_all_refnames_match (int ,int *) ;
 int cl_git_pass (int ) ;
 int git_reference_foreach (int ,int ,int *) ;
 int git_vector_init (int *,int,int *) ;
 int refcmp_cb ;
 int refnames ;
 int refs_foreach_cb ;
 int repo ;

void test_refs_iterator__foreach(void)
{
 git_vector output;
 cl_git_pass(git_vector_init(&output, 33, &refcmp_cb));
 cl_git_pass(git_reference_foreach(repo, refs_foreach_cb, &output));
 assert_all_refnames_match(refnames, &output);
}

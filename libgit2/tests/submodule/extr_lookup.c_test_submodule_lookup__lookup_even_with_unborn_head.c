
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_reference ;


 int cl_git_pass (int ) ;
 int g_repo ;
 int git_reference_free (int *) ;
 int git_reference_symbolic_create (int **,int ,char*,char*,int,int *) ;
 int test_submodule_lookup__simple_lookup () ;

void test_submodule_lookup__lookup_even_with_unborn_head(void)
{
 git_reference *head;


 cl_git_pass(git_reference_symbolic_create(
  &head, g_repo, "HEAD", "refs/heads/garbage", 1, ((void*)0)));
 git_reference_free(head);

 test_submodule_lookup__simple_lookup();
}

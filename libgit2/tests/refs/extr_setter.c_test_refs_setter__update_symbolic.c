
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_reference ;


 scalar_t__ GIT_REFERENCE_SYMBOLIC ;
 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_reference_free (int *) ;
 int git_reference_lookup (int **,int ,char*) ;
 int git_reference_symbolic_set_target (int **,int *,int ,int *) ;
 int git_reference_symbolic_target (int *) ;
 scalar_t__ git_reference_type (int *) ;
 int ref_master_name ;
 int ref_test_name ;
 scalar_t__ strcmp (int ,int ) ;

void test_refs_setter__update_symbolic(void)
{
 git_reference *head, *new_head;

 cl_git_pass(git_reference_lookup(&head, g_repo, "HEAD"));
 cl_assert(git_reference_type(head) == GIT_REFERENCE_SYMBOLIC);
 cl_assert(strcmp(git_reference_symbolic_target(head), ref_master_name) == 0);

 cl_git_pass(git_reference_symbolic_set_target(&new_head, head, ref_test_name, ((void*)0)));
 git_reference_free(new_head);
 git_reference_free(head);

 cl_git_pass(git_reference_lookup(&head, g_repo, "HEAD"));
 cl_assert(git_reference_type(head) == GIT_REFERENCE_SYMBOLIC);
 cl_assert(strcmp(git_reference_symbolic_target(head), ref_test_name) == 0);
 git_reference_free(head);
}

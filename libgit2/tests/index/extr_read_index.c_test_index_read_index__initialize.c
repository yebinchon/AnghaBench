
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_reference ;
typedef int git_object ;


 int GIT_RESET_HARD ;
 int _index ;
 int _repo ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (char*) ;
 int git_object_free (int *) ;
 int git_reference_free (int *) ;
 int git_repository_index (int *,int ) ;
 int git_reset (int ,int *,int ,int *) ;
 int git_revparse_ext (int **,int **,int ,char*) ;

void test_index_read_index__initialize(void)
{
 git_object *head;
 git_reference *head_ref;

 _repo = cl_git_sandbox_init("testrepo");
 cl_git_pass(git_revparse_ext(&head, &head_ref, _repo, "HEAD"));
 cl_git_pass(git_reset(_repo, head, GIT_RESET_HARD, ((void*)0)));
 cl_git_pass(git_repository_index(&_index, _repo));

 git_reference_free(head_ref);
 git_object_free(head);
}

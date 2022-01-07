
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_reference ;
typedef int git_object ;


 int GIT_OBJECT_COMMIT ;
 int GIT_RESET_HARD ;
 int cl_git_pass (int ) ;
 int git_object_free (int *) ;
 int git_reference_free (int *) ;
 int git_reference_peel (int **,int *,int ) ;
 int git_repository_head (int **,int ) ;
 int git_reset (int ,int *,int ,int *) ;
 int merge_branch () ;
 int p_unlink (char*) ;
 int repo ;

void test_merge_workdir_dirty__unstaged_deletes_maintained(void)
{
 git_reference *head;
 git_object *head_object;

 cl_git_pass(git_repository_head(&head, repo));
 cl_git_pass(git_reference_peel(&head_object, head, GIT_OBJECT_COMMIT));
 cl_git_pass(git_reset(repo, head_object, GIT_RESET_HARD, ((void*)0)));

 cl_git_pass(p_unlink("merge-resolve/unchanged.txt"));

 cl_git_pass(merge_branch());

 git_object_free(head_object);
 git_reference_free(head);
}

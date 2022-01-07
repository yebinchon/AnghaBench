
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_reference ;
typedef int git_object ;


 int GIT_OBJECT_COMMIT ;
 int GIT_RESET_HARD ;
 int cl_git_pass (int ) ;
 int git_index_write (int ) ;
 int git_object_free (int *) ;
 int git_reference_free (int *) ;
 int git_reference_peel (int **,int *,int ) ;
 int git_repository_head (int **,int ) ;
 int git_reset (int ,int *,int ,int *) ;
 int hack_index (char**) ;
 int merge_branch () ;
 int repo ;
 int repo_index ;
 int write_files (char**) ;

__attribute__((used)) static int merge_differently_filtered_files(char *files[])
{
 git_reference *head;
 git_object *head_object;
 int error;

 cl_git_pass(git_repository_head(&head, repo));
 cl_git_pass(git_reference_peel(&head_object, head, GIT_OBJECT_COMMIT));
 cl_git_pass(git_reset(repo, head_object, GIT_RESET_HARD, ((void*)0)));
 write_files(files);
 hack_index(files);

 cl_git_pass(git_index_write(repo_index));

 error = merge_branch();

 git_object_free(head_object);
 git_reference_free(head);

 return error;
}

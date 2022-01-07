
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_reference ;
typedef int git_object ;


 int GIT_OBJECT_COMMIT ;
 int cl_assert_equal_i (int,int ) ;
 int cl_git_pass (int ) ;
 int git_object_free (int *) ;
 int git_object_lookup (int **,int ,int ,int ) ;
 int git_reference_free (int *) ;
 int git_reference_target (int *) ;
 int git_repository_head (int **,int ) ;
 int git_repository_head_detached (int ) ;
 int repo ;

__attribute__((used)) static void assert_head_is_correctly_detached(void)
{
 git_reference *head;
 git_object *commit;

 cl_assert_equal_i(1, git_repository_head_detached(repo));

 cl_git_pass(git_repository_head(&head, repo));

 cl_git_pass(git_object_lookup(&commit, repo, git_reference_target(head), GIT_OBJECT_COMMIT));

 git_object_free(commit);
 git_reference_free(head);
}

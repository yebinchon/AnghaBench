
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_reference ;
typedef int git_object ;
typedef int git_commit ;


 int GIT_OBJECT_COMMIT ;
 int GIT_RESET_HARD ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (char*) ;
 int cl_repo_set_bool (int ,char*,int) ;
 int g_repo ;
 int git_commit_free (int *) ;
 int git_reference_free (int *) ;
 int git_reference_peel (int **,int *,int ) ;
 int git_repository_head (int **,int ) ;
 int git_reset (int ,int *,int ,int *) ;

void test_filter_file__initialize(void)
{
 git_reference *head_ref;
 git_commit *head;

 g_repo = cl_git_sandbox_init("crlf");

 cl_git_mkfile("crlf/.gitattributes",
  "*.txt text\n*.bin binary\n*.crlf text eol=crlf\n*.lf text eol=lf\n");

 cl_repo_set_bool(g_repo, "core.autocrlf", 1);

 cl_git_pass(git_repository_head(&head_ref, g_repo));
 cl_git_pass(git_reference_peel((git_object **)&head, head_ref, GIT_OBJECT_COMMIT));
 cl_git_pass(git_reset(g_repo, (git_object *)head, GIT_RESET_HARD, ((void*)0)));

 git_commit_free(head);
 git_reference_free(head_ref);
}

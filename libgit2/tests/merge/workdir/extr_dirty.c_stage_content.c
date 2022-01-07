
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int git_reference ;
typedef int git_object ;
struct TYPE_6__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int GIT_OBJECT_COMMIT ;
 int GIT_RESET_HARD ;
 int TEST_REPO_PATH ;
 int cl_git_mkfile (int ,char*) ;
 int cl_git_pass (int ) ;
 int git_buf_clear (TYPE_1__*) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_printf (TYPE_1__*,char*,int ,char*) ;
 int git_index_add_bypath (int ,char*) ;
 int git_object_free (int *) ;
 int git_reference_free (int *) ;
 int git_reference_peel (int **,int *,int ) ;
 int git_repository_head (int **,int ) ;
 int git_reset (int ,int *,int ,int *) ;
 int repo ;
 int repo_index ;

__attribute__((used)) static void stage_content(char *content[])
{
 git_reference *head;
 git_object *head_object;
 git_buf path = GIT_BUF_INIT;
 char *filename, *text;
 size_t i;

 cl_git_pass(git_repository_head(&head, repo));
 cl_git_pass(git_reference_peel(&head_object, head, GIT_OBJECT_COMMIT));
 cl_git_pass(git_reset(repo, head_object, GIT_RESET_HARD, ((void*)0)));

 for (i = 0, filename = content[i], text = content[++i];
  filename && text;
  filename = content[++i], text = content[++i]) {

  git_buf_clear(&path);

  cl_git_pass(git_buf_printf(&path, "%s/%s", TEST_REPO_PATH, filename));

  cl_git_mkfile(path.ptr, text);
  cl_git_pass(git_index_add_bypath(repo_index, filename));
 }

 git_object_free(head_object);
 git_reference_free(head);
 git_buf_dispose(&path);
}

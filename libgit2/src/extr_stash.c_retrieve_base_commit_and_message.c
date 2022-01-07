
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_reference ;
typedef int git_commit ;
typedef int git_buf ;


 int GIT_REFS_HEADS_DIR ;
 int append_commit_description (int *,int *) ;
 int git_buf_printf (int *,char*,scalar_t__) ;
 int git_buf_puts (int *,char*) ;
 int git_commit_lookup (int **,int *,int ) ;
 int git_reference_free (int *) ;
 scalar_t__ git_reference_name (int *) ;
 int git_reference_target (int *) ;
 int retrieve_head (int **,int *) ;
 scalar_t__ strcmp (char*,scalar_t__) ;
 scalar_t__ strlen (int ) ;

__attribute__((used)) static int retrieve_base_commit_and_message(
 git_commit **b_commit,
 git_buf *stash_message,
 git_repository *repo)
{
 git_reference *head = ((void*)0);
 int error;

 if ((error = retrieve_head(&head, repo)) < 0)
  return error;

 if (strcmp("HEAD", git_reference_name(head)) == 0)
  error = git_buf_puts(stash_message, "(no branch): ");
 else
  error = git_buf_printf(
   stash_message,
   "%s: ",
   git_reference_name(head) + strlen(GIT_REFS_HEADS_DIR));
 if (error < 0)
  goto cleanup;

 if ((error = git_commit_lookup(
    b_commit, repo, git_reference_target(head))) < 0)
  goto cleanup;

 if ((error = append_commit_description(stash_message, *b_commit)) < 0)
  goto cleanup;

cleanup:
 git_reference_free(head);
 return error;
}

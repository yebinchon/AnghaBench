
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int git_repository ;
typedef int git_reference ;
struct TYPE_7__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int GIT_ENOTFOUND ;
 int GIT_ERROR_INVALID ;
 int git_branch_remote_name (TYPE_1__*,int *,int ) ;
 int git_branch_upstream_name (TYPE_1__*,int *,int ) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_error_set (int ,char*) ;
 int git_reference_free (int *) ;
 int git_reference_is_branch (int *) ;
 int git_reference_name (int *) ;
 int git_repository_head (int **,int *) ;

__attribute__((used)) static int lookup_head_remote_key(git_buf *remote_name, git_repository *repo)
{
 int error;
 git_reference *head = ((void*)0);
 git_buf upstream_name = GIT_BUF_INIT;


 if ((error = git_repository_head(&head, repo)) < 0)
  return error;






 if (!git_reference_is_branch(head)) {
  git_error_set(GIT_ERROR_INVALID,
   "HEAD does not refer to a branch.");
  error = GIT_ENOTFOUND;
  goto done;
 }


 if ((error = git_branch_upstream_name(
  &upstream_name,
  repo,
  git_reference_name(head))) < 0)
  goto done;


 if ((error = git_branch_remote_name(remote_name, repo, upstream_name.ptr)) < 0)
  goto done;

done:
 git_buf_dispose(&upstream_name);
 git_reference_free(head);

 return error;
}

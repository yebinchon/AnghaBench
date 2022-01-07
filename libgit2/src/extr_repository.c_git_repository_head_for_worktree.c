
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_repository ;
typedef int git_reference ;
struct TYPE_5__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int GIT_HEAD_FILE ;
 scalar_t__ GIT_REFERENCE_DIRECT ;
 int assert (int ) ;
 int get_worktree_file_path (TYPE_1__*,int *,char const*,int ) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_reference__read_head (int **,int *,int ) ;
 int git_reference_free (int *) ;
 int git_reference_lookup_resolved (int **,int *,int ,int) ;
 int git_reference_symbolic_target (int *) ;
 scalar_t__ git_reference_type (int *) ;

int git_repository_head_for_worktree(git_reference **out, git_repository *repo, const char *name)
{
 git_buf path = GIT_BUF_INIT;
 git_reference *head = ((void*)0);
 int error;

 assert(out && repo && name);

 *out = ((void*)0);

 if ((error = get_worktree_file_path(&path, repo, name, GIT_HEAD_FILE)) < 0 ||
     (error = git_reference__read_head(&head, repo, path.ptr)) < 0)
  goto out;

 if (git_reference_type(head) != GIT_REFERENCE_DIRECT) {
  git_reference *resolved;

  error = git_reference_lookup_resolved(&resolved, repo, git_reference_symbolic_target(head), -1);
  git_reference_free(head);
  head = resolved;
 }

 *out = head;

out:
 if (error)
  git_reference_free(head);

 git_buf_dispose(&path);

 return error;
}

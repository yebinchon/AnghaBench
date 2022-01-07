
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int parent_path; } ;
typedef TYPE_1__ git_worktree ;
typedef int git_repository ;
typedef int git_remote ;
typedef int git_buf ;


 int GIT_ENOTFOUND ;
 int git_buf_sets (int *,int ) ;
 int git_error_clear () ;
 int git_remote_free (int *) ;
 int git_remote_url (int *) ;
 scalar_t__ git_repository_is_worktree (int *) ;
 int git_repository_workdir (int *) ;
 int git_worktree_free (TYPE_1__*) ;
 int git_worktree_open_from_repository (TYPE_1__**,int *) ;
 int lookup_default_remote (int **,int *) ;

__attribute__((used)) static int get_url_base(git_buf *url, git_repository *repo)
{
 int error;
 git_worktree *wt = ((void*)0);
 git_remote *remote = ((void*)0);

 if ((error = lookup_default_remote(&remote, repo)) == 0) {
  error = git_buf_sets(url, git_remote_url(remote));
  goto out;
 } else if (error != GIT_ENOTFOUND)
  goto out;
 else
  git_error_clear();


 if (git_repository_is_worktree(repo)) {
  if ((error = git_worktree_open_from_repository(&wt, repo)) < 0)
   goto out;
  error = git_buf_sets(url, wt->parent_path);
 } else
  error = git_buf_sets(url, git_repository_workdir(repo));

out:
 git_remote_free(remote);
 git_worktree_free(wt);

 return error;
}

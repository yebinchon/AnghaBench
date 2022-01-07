
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int gitlink_path; } ;
typedef TYPE_1__ git_worktree ;
typedef int git_repository ;
struct TYPE_8__ {int ptr; } ;
typedef TYPE_2__ git_buf ;


 TYPE_2__ GIT_BUF_INIT ;
 int assert (int) ;
 int git_buf_dispose (TYPE_2__*) ;
 int git_buf_set (TYPE_2__*,int ,size_t) ;
 int git_repository_open (int **,int ) ;
 scalar_t__ strcasecmp (scalar_t__,char*) ;
 size_t strlen (int ) ;

int git_repository_open_from_worktree(git_repository **repo_out, git_worktree *wt)
{
 git_buf path = GIT_BUF_INIT;
 git_repository *repo = ((void*)0);
 size_t len;
 int err;

 assert(repo_out && wt);

 *repo_out = ((void*)0);
 len = strlen(wt->gitlink_path);

 if (len <= 4 || strcasecmp(wt->gitlink_path + len - 4, ".git")) {
  err = -1;
  goto out;
 }

 if ((err = git_buf_set(&path, wt->gitlink_path, len - 4)) < 0)
  goto out;

 if ((err = git_repository_open(&repo, path.ptr)) < 0)
  goto out;

 *repo_out = repo;

out:
 git_buf_dispose(&path);

 return err;
}

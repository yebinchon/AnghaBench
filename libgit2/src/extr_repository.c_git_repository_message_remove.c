
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int gitdir; } ;
typedef TYPE_1__ git_repository ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 int GIT_MERGE_MSG_FILE ;
 int git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 scalar_t__ git_buf_joinpath (int *,int ,int ) ;
 int p_unlink (int ) ;

int git_repository_message_remove(git_repository *repo)
{
 git_buf path = GIT_BUF_INIT;
 int error;

 if (git_buf_joinpath(&path, repo->gitdir, GIT_MERGE_MSG_FILE) < 0)
  return -1;

 error = p_unlink(git_buf_cstr(&path));
 git_buf_dispose(&path);

 return error;
}

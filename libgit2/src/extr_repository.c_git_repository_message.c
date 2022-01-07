
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct stat {int dummy; } ;
struct TYPE_3__ {int gitdir; } ;
typedef TYPE_1__ git_repository ;
typedef int git_buf ;


 scalar_t__ ENOENT ;
 int GIT_BUF_INIT ;
 int GIT_ENOTFOUND ;
 int GIT_ERROR_OS ;
 int GIT_MERGE_MSG_FILE ;
 scalar_t__ errno ;
 int git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 scalar_t__ git_buf_joinpath (int *,int ,int ) ;
 int git_buf_sanitize (int *) ;
 int git_error_set (int ,char*) ;
 int git_futils_readbuffer (int *,int ) ;
 int p_stat (int ,struct stat*) ;

int git_repository_message(git_buf *out, git_repository *repo)
{
 git_buf path = GIT_BUF_INIT;
 struct stat st;
 int error;

 git_buf_sanitize(out);

 if (git_buf_joinpath(&path, repo->gitdir, GIT_MERGE_MSG_FILE) < 0)
  return -1;

 if ((error = p_stat(git_buf_cstr(&path), &st)) < 0) {
  if (errno == ENOENT)
   error = GIT_ENOTFOUND;
  git_error_set(GIT_ERROR_OS, "could not access message file");
 } else {
  error = git_futils_readbuffer(out, git_buf_cstr(&path));
 }

 git_buf_dispose(&path);

 return error;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_buf ;


 int GIT_BUF_INIT ;
 int git_buf_dispose (int *) ;
 scalar_t__ git_buf_sets (int *,char const*) ;
 scalar_t__ git_path_contains_file (int *,char*) ;

__attribute__((used)) static bool is_worktree_dir(const char *dir)
{
 git_buf buf = GIT_BUF_INIT;
 int error;

 if (git_buf_sets(&buf, dir) < 0)
  return -1;

 error = git_path_contains_file(&buf, "commondir")
  && git_path_contains_file(&buf, "gitdir")
  && git_path_contains_file(&buf, "HEAD");

 git_buf_dispose(&buf);
 return error;
}

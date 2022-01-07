
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_buf ;


 int GIT_BUF_INIT ;
 int git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 int git_buf_joinpath (int *,char const*,char*) ;
 int git_path_exists (int ) ;

__attribute__((used)) static bool is_filesystem_case_insensitive(const char *gitdir_path)
{
 git_buf path = GIT_BUF_INIT;
 int is_insensitive = -1;

 if (!git_buf_joinpath(&path, gitdir_path, "CoNfIg"))
  is_insensitive = git_path_exists(git_buf_cstr(&path));

 git_buf_dispose(&path);
 return is_insensitive;
}

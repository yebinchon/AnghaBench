
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 int git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 int git_path_isfile (int ) ;
 scalar_t__ retrieve_reflog_path (int *,int *,char const*) ;

__attribute__((used)) static int has_reflog(git_repository *repo, const char *name)
{
 int ret = 0;
 git_buf path = GIT_BUF_INIT;

 if (retrieve_reflog_path(&path, repo, name) < 0)
  goto cleanup;

 ret = git_path_isfile(git_buf_cstr(&path));

cleanup:
 git_buf_dispose(&path);
 return ret;
}

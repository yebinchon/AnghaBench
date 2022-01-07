
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_config ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 int git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 scalar_t__ git_buf_printf (int *,char*,char const*) ;
 scalar_t__ git_config_set_string (int *,int ,char const*) ;
 scalar_t__ git_repository_config__weakptr (int **,int *) ;

__attribute__((used)) static int setup_tracking_config(
 git_repository *repo,
 const char *branch_name,
 const char *remote_name,
 const char *merge_target)
{
 git_config *cfg;
 git_buf remote_key = GIT_BUF_INIT, merge_key = GIT_BUF_INIT;
 int error = -1;

 if (git_repository_config__weakptr(&cfg, repo) < 0)
  return -1;

 if (git_buf_printf(&remote_key, "branch.%s.remote", branch_name) < 0)
  goto cleanup;

 if (git_buf_printf(&merge_key, "branch.%s.merge", branch_name) < 0)
  goto cleanup;

 if (git_config_set_string(cfg, git_buf_cstr(&remote_key), remote_name) < 0)
  goto cleanup;

 if (git_config_set_string(cfg, git_buf_cstr(&merge_key), merge_target) < 0)
  goto cleanup;

 error = 0;

cleanup:
 git_buf_dispose(&remote_key);
 git_buf_dispose(&merge_key);
 return error;
}

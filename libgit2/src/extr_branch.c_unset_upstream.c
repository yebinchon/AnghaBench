
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_config ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 int git_buf_clear (int *) ;
 int git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 scalar_t__ git_buf_printf (int *,char*,char const*) ;
 scalar_t__ git_config_delete_entry (int *,int ) ;

__attribute__((used)) static int unset_upstream(git_config *config, const char *shortname)
{
 git_buf buf = GIT_BUF_INIT;

 if (git_buf_printf(&buf, "branch.%s.remote", shortname) < 0)
  return -1;

 if (git_config_delete_entry(config, git_buf_cstr(&buf)) < 0)
  goto on_error;

 git_buf_clear(&buf);
 if (git_buf_printf(&buf, "branch.%s.merge", shortname) < 0)
  goto on_error;

 if (git_config_delete_entry(config, git_buf_cstr(&buf)) < 0)
  goto on_error;

 git_buf_dispose(&buf);
 return 0;

on_error:
 git_buf_dispose(&buf);
 return -1;
}

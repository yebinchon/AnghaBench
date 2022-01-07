
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 int * git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 scalar_t__ git_buf_printf (int *,char*,char const*) ;
 int git_config_rename_section (int *,int *,int *) ;

__attribute__((used)) static int rename_remote_config_section(
 git_repository *repo,
 const char *old_name,
 const char *new_name)
{
 git_buf old_section_name = GIT_BUF_INIT,
  new_section_name = GIT_BUF_INIT;
 int error = -1;

 if (git_buf_printf(&old_section_name, "remote.%s", old_name) < 0)
  goto cleanup;

 if (new_name &&
  (git_buf_printf(&new_section_name, "remote.%s", new_name) < 0))
   goto cleanup;

 error = git_config_rename_section(
  repo,
  git_buf_cstr(&old_section_name),
  new_name ? git_buf_cstr(&new_section_name) : ((void*)0));

cleanup:
 git_buf_dispose(&old_section_name);
 git_buf_dispose(&new_section_name);

 return error;
}

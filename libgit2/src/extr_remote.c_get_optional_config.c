
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * git_config_foreach_cb ;
typedef int git_config ;
typedef int git_buf ;


 int GIT_ENOTFOUND ;
 char* git_buf_cstr (int *) ;
 scalar_t__ git_buf_oom (int *) ;
 int git_config_get_multivar_foreach (int *,char const*,int *,int *,void*) ;
 int git_config_get_string (void*,int *,char const*) ;
 int git_error_clear () ;

__attribute__((used)) static int get_optional_config(
 bool *found, git_config *config, git_buf *buf,
 git_config_foreach_cb cb, void *payload)
{
 int error = 0;
 const char *key = git_buf_cstr(buf);

 if (git_buf_oom(buf))
  return -1;

 if (cb != ((void*)0))
  error = git_config_get_multivar_foreach(config, key, ((void*)0), cb, payload);
 else
  error = git_config_get_string(payload, config, key);

 if (found)
  *found = !error;

 if (error == GIT_ENOTFOUND) {
  git_error_clear();
  error = 0;
 }

 return error;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_buf ;


 int GIT_ERROR_CONFIG ;
 int assert (int) ;
 int git_buf_sanitize (int *) ;
 int git_buf_sets (int *,char const*) ;
 int git_error_set (int ,char*) ;
 int git_sysdir_expand_global_file (int *,char const*) ;

int git_config_parse_path(git_buf *out, const char *value)
{
 assert(out && value);

 git_buf_sanitize(out);

 if (value[0] == '~') {
  if (value[1] != '\0' && value[1] != '/') {
   git_error_set(GIT_ERROR_CONFIG, "retrieving a homedir by name is not supported");
   return -1;
  }

  return git_sysdir_expand_global_file(out, value[1] ? &value[2] : ((void*)0));
 }

 return git_buf_sets(out, value);
}

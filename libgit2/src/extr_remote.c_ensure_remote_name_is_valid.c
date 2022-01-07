
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_EINVALIDSPEC ;
 int GIT_ERROR_CONFIG ;
 int git_error_set (int ,char*,char const*) ;
 int git_remote_is_valid_name (char const*) ;

__attribute__((used)) static int ensure_remote_name_is_valid(const char *name)
{
 int error = 0;

 if (!git_remote_is_valid_name(name)) {
  git_error_set(
   GIT_ERROR_CONFIG,
   "'%s' is not a valid remote name.", name ? name : "(null)");
  error = GIT_EINVALIDSPEC;
 }

 return error;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_ERROR_CONFIG ;
 scalar_t__ git__parse_bool (int*,char const*) ;
 scalar_t__ git_config_parse_int32 (int*,char const*) ;
 int git_error_set (int ,char*,char const*) ;

int git_config_parse_bool(int *out, const char *value)
{
 if (git__parse_bool(out, value) == 0)
  return 0;

 if (git_config_parse_int32(out, value) == 0) {
  *out = !!(*out);
  return 0;
 }

 git_error_set(GIT_ERROR_CONFIG, "failed to parse '%s' as a boolean value", value);
 return -1;
}

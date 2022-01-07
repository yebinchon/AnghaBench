
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DIFF_DETECT_COPY ;
 int DIFF_DETECT_RENAME ;
 scalar_t__ git_config_bool (char const*,char const*) ;
 int strcasecmp (char const*,char*) ;

int git_config_rename(const char *var, const char *value)
{
 if (!value)
  return DIFF_DETECT_RENAME;
 if (!strcasecmp(value, "copies") || !strcasecmp(value, "copy"))
  return DIFF_DETECT_COPY;
 return git_config_bool(var,value) ? DIFF_DETECT_RENAME : 0;
}

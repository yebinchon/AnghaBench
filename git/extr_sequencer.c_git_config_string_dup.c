
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int config_error_nonbool (char const*) ;
 int free (char*) ;
 char* xstrdup (char const*) ;

__attribute__((used)) static int git_config_string_dup(char **dest,
     const char *var, const char *value)
{
 if (!value)
  return config_error_nonbool(var);
 free(*dest);
 *dest = xstrdup(value);
 return 0;
}

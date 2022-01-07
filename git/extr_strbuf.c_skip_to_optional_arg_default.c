
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int skip_prefix (char const*,char const*,char const**) ;

int skip_to_optional_arg_default(const char *str, const char *prefix,
     const char **arg, const char *def)
{
 const char *p;

 if (!skip_prefix(str, prefix, &p))
  return 0;

 if (!*p) {
  if (arg)
   *arg = def;
  return 1;
 }

 if (*p != '=')
  return 0;

 if (arg)
  *arg = p + 1;
 return 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct args_info {char** argv; size_t pos; int argc; } ;


 size_t is_prefixed (char const*,char const*) ;

int optional_str_arg(
 const char **out, struct args_info *args, const char *opt, const char *def)
{
 const char *found = args->argv[args->pos];
 size_t len = is_prefixed(found, opt);

 if (!len)
  return 0;

 if (!found[len]) {
  if (args->pos + 1 == args->argc) {
   *out = def;
   return 1;
  }
  args->pos += 1;
  *out = args->argv[args->pos];
  return 1;
 }

 if (found[len] == '=') {
  *out = found + len + 1;
  return 1;
 }

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct args_info {char** argv; size_t pos; int argc; } ;


 int fatal (char*,char const*) ;
 size_t is_prefixed (char const*,char const*) ;

int match_str_arg(
 const char **out, struct args_info *args, const char *opt)
{
 const char *found = args->argv[args->pos];
 size_t len = is_prefixed(found, opt);

 if (!len)
  return 0;

 if (!found[len]) {
  if (args->pos + 1 == args->argc)
   fatal("expected value following argument", opt);
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

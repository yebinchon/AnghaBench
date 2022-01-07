
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct args_info {char** argv; size_t pos; } ;


 int strcmp (char const*,char const*) ;
 int strlen (char*) ;
 int strncmp (char const*,char*,int) ;

int match_bool_arg(int *out, struct args_info *args, const char *opt)
{
 const char *found = args->argv[args->pos];

 if (!strcmp(found, opt)) {
  *out = 1;
  return 1;
 }

 if (!strncmp(found, "--no-", strlen("--no-")) &&
     !strcmp(found + strlen("--no-"), opt + 2)) {
  *out = 0;
  return 1;
 }

 *out = -1;
 return 0;
}

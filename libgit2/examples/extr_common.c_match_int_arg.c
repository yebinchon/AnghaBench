
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct args_info {int dummy; } ;


 int match_int_internal (int*,char const*,int,char const*) ;
 char* match_numeric_arg (struct args_info*,char const*) ;

int match_int_arg(
 int *out, struct args_info *args, const char *opt, int allow_negative)
{
 const char *found = match_numeric_arg(args, opt);
 if (!found)
  return 0;
 return match_int_internal(out, found, allow_negative, opt);
}

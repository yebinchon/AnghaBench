
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef scalar_t__ uint16_t ;
struct args_info {int dummy; } ;


 int fatal (char*,char const*) ;
 char* match_numeric_arg (struct args_info*,char const*) ;
 scalar_t__ strtoul (char const*,char**,int ) ;

int match_uint32_arg(
 uint32_t *out, struct args_info *args, const char *opt)
{
 const char *found = match_numeric_arg(args, opt);
 uint16_t val;
 char *endptr = ((void*)0);

 if (!found)
  return 0;

 val = (uint32_t)strtoul(found, &endptr, 0);
 if (!endptr || *endptr != '\0')
  fatal("expected number after argument", opt);

 if (out)
  *out = val;
 return 1;
}

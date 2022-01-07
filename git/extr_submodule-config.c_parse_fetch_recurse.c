
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RECURSE_SUBMODULES_ERROR ;
 int RECURSE_SUBMODULES_OFF ;
 int RECURSE_SUBMODULES_ON ;
 int RECURSE_SUBMODULES_ON_DEMAND ;
 int die (char*,char const*,char const*) ;
 int git_parse_maybe_bool (char const*) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int parse_fetch_recurse(const char *opt, const char *arg,
          int die_on_error)
{
 switch (git_parse_maybe_bool(arg)) {
 case 1:
  return RECURSE_SUBMODULES_ON;
 case 0:
  return RECURSE_SUBMODULES_OFF;
 default:
  if (!strcmp(arg, "on-demand"))
   return RECURSE_SUBMODULES_ON_DEMAND;




  if (die_on_error)
   die("bad %s argument: %s", opt, arg);
  else
   return RECURSE_SUBMODULES_ERROR;
 }
}

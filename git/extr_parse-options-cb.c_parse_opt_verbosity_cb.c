
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {int* value; char short_name; } ;


 int BUG_ON_OPT_ARG (char const*) ;

int parse_opt_verbosity_cb(const struct option *opt, const char *arg,
      int unset)
{
 int *target = opt->value;

 BUG_ON_OPT_ARG(arg);

 if (unset)

  *target = 0;
 else if (opt->short_name == 'v') {
  if (*target >= 0)
   (*target)++;
  else
   *target = 1;
 } else {
  if (*target <= 0)
   (*target)--;
  else
   *target = -1;
 }
 return 0;
}

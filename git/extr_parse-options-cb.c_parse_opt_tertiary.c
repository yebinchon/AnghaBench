
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {int* value; } ;


 int BUG_ON_OPT_ARG (char const*) ;

int parse_opt_tertiary(const struct option *opt, const char *arg, int unset)
{
 int *target = opt->value;

 BUG_ON_OPT_ARG(arg);

 *target = unset ? 2 : 1;
 return 0;
}

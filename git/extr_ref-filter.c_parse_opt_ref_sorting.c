
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {int value; } ;


 int BUG_ON_OPT_NEG (int) ;
 int parse_ref_sorting (int ,char const*) ;

int parse_opt_ref_sorting(const struct option *opt, const char *arg, int unset)
{





 BUG_ON_OPT_NEG(unset);

 parse_ref_sorting(opt->value, arg);
 return 0;
}

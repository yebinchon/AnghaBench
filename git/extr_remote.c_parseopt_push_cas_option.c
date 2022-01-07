
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {int value; } ;


 int parse_push_cas_option (int ,char const*,int) ;

int parseopt_push_cas_option(const struct option *opt, const char *arg, int unset)
{
 return parse_push_cas_option(opt->value, arg, unset);
}

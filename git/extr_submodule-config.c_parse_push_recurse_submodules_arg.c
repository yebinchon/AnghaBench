
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int parse_push_recurse (char const*,char const*,int) ;

int parse_push_recurse_submodules_arg(const char *opt, const char *arg)
{
 return parse_push_recurse(opt, arg, 1);
}

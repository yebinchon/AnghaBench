
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {struct diff_options* value; } ;
struct diff_options {char const* pickaxe; int pickaxe_opts; } ;


 int BUG_ON_OPT_NEG (int) ;
 int DIFF_PICKAXE_KIND_S ;

__attribute__((used)) static int diff_opt_pickaxe_string(const struct option *opt,
       const char *arg, int unset)
{
 struct diff_options *options = opt->value;

 BUG_ON_OPT_NEG(unset);
 options->pickaxe = arg;
 options->pickaxe_opts |= DIFF_PICKAXE_KIND_S;
 return 0;
}

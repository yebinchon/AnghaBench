
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {struct diff_options* value; } ;
struct diff_options {char* a_prefix; char* b_prefix; } ;


 int BUG_ON_OPT_ARG (char const*) ;
 int BUG_ON_OPT_NEG (int) ;

__attribute__((used)) static int diff_opt_no_prefix(const struct option *opt,
         const char *optarg, int unset)
{
 struct diff_options *options = opt->value;

 BUG_ON_OPT_NEG(unset);
 BUG_ON_OPT_ARG(optarg);
 options->a_prefix = "";
 options->b_prefix = "";
 return 0;
}

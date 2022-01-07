
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct option {struct diff_options* value; } ;
struct TYPE_2__ {int relative_name; } ;
struct diff_options {char const* prefix; TYPE_1__ flags; } ;


 int BUG_ON_OPT_NEG (int) ;

__attribute__((used)) static int diff_opt_relative(const struct option *opt,
        const char *arg, int unset)
{
 struct diff_options *options = opt->value;

 BUG_ON_OPT_NEG(unset);
 options->flags.relative_name = 1;
 if (arg)
  options->prefix = arg;
 return 0;
}

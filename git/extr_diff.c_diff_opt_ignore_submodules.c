
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct option {struct diff_options* value; } ;
struct TYPE_2__ {int override_submodule_config; } ;
struct diff_options {TYPE_1__ flags; } ;


 int BUG_ON_OPT_NEG (int) ;
 int handle_ignore_submodules_arg (struct diff_options*,char const*) ;

__attribute__((used)) static int diff_opt_ignore_submodules(const struct option *opt,
          const char *arg, int unset)
{
 struct diff_options *options = opt->value;

 BUG_ON_OPT_NEG(unset);
 if (!arg)
  arg = "all";
 options->flags.override_submodule_config = 1;
 handle_ignore_submodules_arg(options, arg);
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct option {struct diff_options* value; } ;
struct TYPE_2__ {int follow_renames; scalar_t__ default_follow_renames; } ;
struct diff_options {TYPE_1__ flags; } ;


 int BUG_ON_OPT_ARG (char const*) ;

__attribute__((used)) static int diff_opt_follow(const struct option *opt,
      const char *arg, int unset)
{
 struct diff_options *options = opt->value;

 BUG_ON_OPT_ARG(arg);
 if (unset) {
  options->flags.follow_renames = 0;
  options->flags.default_follow_renames = 0;
 } else {
  options->flags.follow_renames = 1;
 }
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct option {struct diff_options* value; } ;
struct TYPE_2__ {int stat_with_summary; } ;
struct diff_options {int output_format; TYPE_1__ flags; } ;


 int BUG_ON_OPT_ARG (char const*) ;
 int DIFF_FORMAT_DIFFSTAT ;

__attribute__((used)) static int diff_opt_compact_summary(const struct option *opt,
        const char *arg, int unset)
{
 struct diff_options *options = opt->value;

 BUG_ON_OPT_ARG(arg);
 if (unset) {
  options->flags.stat_with_summary = 0;
 } else {
  options->flags.stat_with_summary = 1;
  options->output_format |= DIFF_FORMAT_DIFFSTAT;
 }
 return 0;
}

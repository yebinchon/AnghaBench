
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct option {struct diff_options* value; } ;
struct TYPE_2__ {int allow_textconv; int textconv_set_via_cmdline; } ;
struct diff_options {TYPE_1__ flags; } ;


 int BUG_ON_OPT_ARG (char const*) ;

__attribute__((used)) static int diff_opt_textconv(const struct option *opt,
        const char *arg, int unset)
{
 struct diff_options *options = opt->value;

 BUG_ON_OPT_ARG(arg);
 if (unset) {
  options->flags.allow_textconv = 0;
 } else {
  options->flags.allow_textconv = 1;
  options->flags.textconv_set_via_cmdline = 1;
 }
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct option {struct diff_options* value; } ;
struct TYPE_2__ {int binary; } ;
struct diff_options {TYPE_1__ flags; int output_format; } ;


 int BUG_ON_OPT_ARG (char const*) ;
 int BUG_ON_OPT_NEG (int) ;
 int enable_patch_output (int *) ;

__attribute__((used)) static int diff_opt_binary(const struct option *opt,
      const char *arg, int unset)
{
 struct diff_options *options = opt->value;

 BUG_ON_OPT_NEG(unset);
 BUG_ON_OPT_ARG(arg);
 enable_patch_output(&options->output_format);
 options->flags.binary = 1;
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {struct diff_options* value; } ;
struct diff_options {int dummy; } ;


 int BUG_ON_OPT_NEG (int) ;
 int _ (char*) ;
 int error (int ,char const*) ;
 scalar_t__ parse_submodule_params (struct diff_options*,char const*) ;

__attribute__((used)) static int diff_opt_submodule(const struct option *opt,
         const char *arg, int unset)
{
 struct diff_options *options = opt->value;

 BUG_ON_OPT_NEG(unset);
 if (!arg)
  arg = "log";
 if (parse_submodule_params(options, arg))
  return error(_("failed to parse --submodule option parameter: '%s'"),
        arg);
 return 0;
}

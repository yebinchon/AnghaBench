
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {int long_name; struct diff_options* value; } ;
struct diff_options {int dummy; } ;


 int BUG (char*) ;
 int BUG_ON_OPT_NEG (int) ;
 int parse_dirstat_opt (struct diff_options*,char const*) ;
 int strcmp (int ,char*) ;

__attribute__((used)) static int diff_opt_dirstat(const struct option *opt,
       const char *arg, int unset)
{
 struct diff_options *options = opt->value;

 BUG_ON_OPT_NEG(unset);
 if (!strcmp(opt->long_name, "cumulative")) {
  if (arg)
   BUG("how come --cumulative take a value?");
  arg = "cumulative";
 } else if (!strcmp(opt->long_name, "dirstat-by-file"))
  parse_dirstat_opt(options, "files");
 parse_dirstat_opt(options, arg ? arg : "");
 return 0;
}

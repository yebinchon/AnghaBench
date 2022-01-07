
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {int long_name; struct diff_options* value; } ;
struct diff_options {int detect_rename; int rename_score; } ;


 int BUG_ON_OPT_NEG (int) ;
 int DIFF_DETECT_RENAME ;
 int _ (char*) ;
 int error (int ,int ) ;
 int parse_rename_score (char const**) ;

__attribute__((used)) static int diff_opt_find_renames(const struct option *opt,
     const char *arg, int unset)
{
 struct diff_options *options = opt->value;

 BUG_ON_OPT_NEG(unset);
 if (!arg)
  arg = "";
 options->rename_score = parse_rename_score(&arg);
 if (*arg != 0)
  return error(_("invalid argument to %s"), opt->long_name);

 options->detect_rename = DIFF_DETECT_RENAME;
 return 0;
}

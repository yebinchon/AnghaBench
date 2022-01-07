
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {int* value; int long_name; } ;


 int BUG_ON_OPT_NEG (int) ;
 int _ (char*) ;
 int error (int ,int ) ;
 int parse_rename_score (char const**) ;

__attribute__((used)) static int diff_opt_break_rewrites(const struct option *opt,
       const char *arg, int unset)
{
 int *break_opt = opt->value;
 int opt1, opt2;

 BUG_ON_OPT_NEG(unset);
 if (!arg)
  arg = "";
 opt1 = parse_rename_score(&arg);
 if (*arg == 0)
  opt2 = 0;
 else if (*arg != '/')
  return error(_("%s expects <n>/<m> form"), opt->long_name);
 else {
  arg++;
  opt2 = parse_rename_score(&arg);
 }
 if (*arg != 0)
  return error(_("%s expects <n>/<m> form"), opt->long_name);
 *break_opt = opt1 | (opt2 << 16);
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {char* value; int long_name; } ;


 int BUG_ON_OPT_NEG (int) ;
 int _ (char*) ;
 int error (int ,int ,char const*) ;

__attribute__((used)) static int diff_opt_char(const struct option *opt,
    const char *arg, int unset)
{
 char *value = opt->value;

 BUG_ON_OPT_NEG(unset);
 if (arg[1])
  return error(_("%s expects a character, got '%s'"),
        opt->long_name, arg);
 *value = arg[0];
 return 0;
}

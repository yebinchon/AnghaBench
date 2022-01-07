
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {struct diff_options* value; } ;
struct diff_options {int output_format; int context; } ;


 int BUG_ON_OPT_NEG (int) ;
 int _ (char*) ;
 int enable_patch_output (int *) ;
 int error (int ,char*) ;
 int strtol (char const*,char**,int) ;

__attribute__((used)) static int diff_opt_unified(const struct option *opt,
       const char *arg, int unset)
{
 struct diff_options *options = opt->value;
 char *s;

 BUG_ON_OPT_NEG(unset);

 if (arg) {
  options->context = strtol(arg, &s, 10);
  if (*s)
   return error(_("%s expects a numerical value"), "--unified");
 }
 enable_patch_output(&options->output_format);

 return 0;
}

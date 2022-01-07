
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {struct diff_options* value; } ;
struct diff_options {int ws_error_highlight; } ;


 int BUG_ON_OPT_NEG (int) ;
 int _ (char*) ;
 int error (int ,int,char const*) ;
 int parse_ws_error_highlight (char const*) ;

__attribute__((used)) static int diff_opt_ws_error_highlight(const struct option *option,
           const char *arg, int unset)
{
 struct diff_options *opt = option->value;
 int val = parse_ws_error_highlight(arg);

 BUG_ON_OPT_NEG(unset);
 if (val < 0)
  return error(_("unknown value after ws-error-highlight=%.*s"),
        -1 - val, arg);
 opt->ws_error_highlight = val;
 return 0;
}

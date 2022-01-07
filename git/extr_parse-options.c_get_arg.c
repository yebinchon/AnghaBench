
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parse_opt_ctx_t {char* opt; int argc; char** argv; } ;
struct option {int flags; scalar_t__ defval; } ;
typedef enum parse_opt_result { ____Placeholder_parse_opt_result } parse_opt_result ;


 int PARSE_OPT_LASTARG_DEFAULT ;
 int _ (char*) ;
 int error (int ,int ) ;
 int optname (struct option const*,int) ;

__attribute__((used)) static enum parse_opt_result get_arg(struct parse_opt_ctx_t *p,
         const struct option *opt,
         int flags, const char **arg)
{
 if (p->opt) {
  *arg = p->opt;
  p->opt = ((void*)0);
 } else if (p->argc == 1 && (opt->flags & PARSE_OPT_LASTARG_DEFAULT)) {
  *arg = (const char *)opt->defval;
 } else if (p->argc > 1) {
  p->argc--;
  *arg = *++p->argv;
 } else
  return error(_("%s requires a value"), optname(opt, flags));
 return 0;
}

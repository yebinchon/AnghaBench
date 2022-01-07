
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {char* buf; } ;
struct option {scalar_t__ type; scalar_t__ value; int defval; scalar_t__ short_name; scalar_t__ long_name; } ;
typedef enum parse_opt_result { ____Placeholder_parse_opt_result } parse_opt_result ;


 scalar_t__ OPTION_CMDMODE ;
 scalar_t__ OPTION_END ;
 int PARSE_OPT_ERROR ;
 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 int error (int ,int ,...) ;
 int optname (struct option const*,int) ;
 int strbuf_addf (struct strbuf*,char*,scalar_t__) ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static enum parse_opt_result opt_command_mode_error(
 const struct option *opt,
 const struct option *all_opts,
 int flags)
{
 const struct option *that;
 struct strbuf that_name = STRBUF_INIT;





 for (that = all_opts; that->type != OPTION_END; that++) {
  if (that == opt ||
      that->type != OPTION_CMDMODE ||
      that->value != opt->value ||
      that->defval != *(int *)opt->value)
   continue;

  if (that->long_name)
   strbuf_addf(&that_name, "--%s", that->long_name);
  else
   strbuf_addf(&that_name, "-%c", that->short_name);
  error(_("%s is incompatible with %s"),
        optname(opt, flags), that_name.buf);
  strbuf_release(&that_name);
  return PARSE_OPT_ERROR;
 }
 return error(_("%s : incompatible with something else"),
       optname(opt, flags));
}

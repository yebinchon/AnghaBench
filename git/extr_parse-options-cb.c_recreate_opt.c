
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct option {char const* long_name; char short_name; } ;


 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_addstr (struct strbuf*,char const*) ;
 int strbuf_reset (struct strbuf*) ;

__attribute__((used)) static int recreate_opt(struct strbuf *sb, const struct option *opt,
  const char *arg, int unset)
{
 strbuf_reset(sb);

 if (opt->long_name) {
  strbuf_addstr(sb, unset ? "--no-" : "--");
  strbuf_addstr(sb, opt->long_name);
  if (arg) {
   strbuf_addch(sb, '=');
   strbuf_addstr(sb, arg);
  }
 } else if (opt->short_name && !unset) {
  strbuf_addch(sb, '-');
  strbuf_addch(sb, opt->short_name);
  if (arg)
   strbuf_addstr(sb, arg);
 } else
  return -1;

 return 0;
}

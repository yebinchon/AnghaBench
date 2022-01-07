
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 scalar_t__ quote_c_style (char const*,struct strbuf*,int *,int) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_addstr (struct strbuf*,char const*) ;

void quote_two_c_style(struct strbuf *sb, const char *prefix, const char *path, int nodq)
{
 if (quote_c_style(prefix, ((void*)0), ((void*)0), 0) ||
     quote_c_style(path, ((void*)0), ((void*)0), 0)) {
  if (!nodq)
   strbuf_addch(sb, '"');
  quote_c_style(prefix, sb, ((void*)0), 1);
  quote_c_style(path, sb, ((void*)0), 1);
  if (!nodq)
   strbuf_addch(sb, '"');
 } else {
  strbuf_addstr(sb, prefix);
  strbuf_addstr(sb, path);
 }
}

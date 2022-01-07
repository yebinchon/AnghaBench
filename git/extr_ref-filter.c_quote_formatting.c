
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;







 int perl_quote_buf (struct strbuf*,char const*) ;
 int python_quote_buf (struct strbuf*,char const*) ;
 int sq_quote_buf (struct strbuf*,char const*) ;
 int strbuf_addstr (struct strbuf*,char const*) ;
 int tcl_quote_buf (struct strbuf*,char const*) ;

__attribute__((used)) static void quote_formatting(struct strbuf *s, const char *str, int quote_style)
{
 switch (quote_style) {
 case 132:
  strbuf_addstr(s, str);
  break;
 case 129:
  sq_quote_buf(s, str);
  break;
 case 131:
  perl_quote_buf(s, str);
  break;
 case 130:
  python_quote_buf(s, str);
  break;
 case 128:
  tcl_quote_buf(s, str);
  break;
 }
}

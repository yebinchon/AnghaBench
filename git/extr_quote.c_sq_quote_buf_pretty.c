
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 int isalpha (char const) ;
 int isdigit (char const) ;
 int sq_quote_buf (struct strbuf*,char const*) ;
 int strbuf_addstr (struct strbuf*,char const*) ;
 int strchr (char const*,char const) ;

void sq_quote_buf_pretty(struct strbuf *dst, const char *src)
{
 static const char ok_punct[] = "+,-./:=@_^";
 const char *p;


 if (!*src) {
  strbuf_addstr(dst, "''");
  return;
 }

 for (p = src; *p; p++) {
  if (!isalpha(*p) && !isdigit(*p) && !strchr(ok_punct, *p)) {
   sq_quote_buf(dst, src);
   return;
  }
 }


 strbuf_addstr(dst, src);
}

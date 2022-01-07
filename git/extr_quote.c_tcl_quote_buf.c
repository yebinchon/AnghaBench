
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_addstr (struct strbuf*,char*) ;

void tcl_quote_buf(struct strbuf *sb, const char *src)
{
 char c;

 strbuf_addch(sb, '"');
 while ((c = *src++)) {
  switch (c) {
  case '[': case ']':
  case '{': case '}':
  case '$': case '\\': case '"':
   strbuf_addch(sb, '\\');

  default:
   strbuf_addch(sb, c);
   break;
  case '\f':
   strbuf_addstr(sb, "\\f");
   break;
  case '\r':
   strbuf_addstr(sb, "\\r");
   break;
  case '\n':
   strbuf_addstr(sb, "\\n");
   break;
  case '\t':
   strbuf_addstr(sb, "\\t");
   break;
  case '\v':
   strbuf_addstr(sb, "\\v");
   break;
  }
 }
 strbuf_addch(sb, '"');
}

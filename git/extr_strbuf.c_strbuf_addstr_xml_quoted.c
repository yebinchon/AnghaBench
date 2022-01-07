
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 int strbuf_add (struct strbuf*,char const*,size_t) ;
 int strbuf_addstr (struct strbuf*,char*) ;
 size_t strcspn (char const*,char*) ;

void strbuf_addstr_xml_quoted(struct strbuf *buf, const char *s)
{
 while (*s) {
  size_t len = strcspn(s, "\"<>&");
  strbuf_add(buf, s, len);
  s += len;
  switch (*s) {
  case '"':
   strbuf_addstr(buf, "&quot;");
   break;
  case '<':
   strbuf_addstr(buf, "&lt;");
   break;
  case '>':
   strbuf_addstr(buf, "&gt;");
   break;
  case '&':
   strbuf_addstr(buf, "&amp;");
   break;
  case 0:
   return;
  }
  s++;
 }
}

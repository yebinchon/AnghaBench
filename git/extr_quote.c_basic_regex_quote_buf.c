
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 int strbuf_addch (struct strbuf*,char) ;

void basic_regex_quote_buf(struct strbuf *sb, const char *src)
{
 char c;

 if (*src == '^') {

  strbuf_addch(sb, '\\');
  strbuf_addch(sb, *src++);
 }
 if (*src == '*')

  strbuf_addch(sb, *src++);

 while ((c = *src++)) {
  switch (c) {
  case '[':
  case '.':
  case '\\':
  case '*':
   strbuf_addch(sb, '\\');
   strbuf_addch(sb, c);
   break;

  case '$':

   if (*src == '\0')
    strbuf_addch(sb, '\\');
   strbuf_addch(sb, c);
   break;

  default:
   strbuf_addch(sb, c);
   break;
  }
 }
}

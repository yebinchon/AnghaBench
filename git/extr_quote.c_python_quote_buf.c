
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 int strbuf_addch (struct strbuf*,char const) ;

void python_quote_buf(struct strbuf *sb, const char *src)
{
 const char sq = '\'';
 const char bq = '\\';
 const char nl = '\n';
 char c;

 strbuf_addch(sb, sq);
 while ((c = *src++)) {
  if (c == nl) {
   strbuf_addch(sb, bq);
   strbuf_addch(sb, 'n');
   continue;
  }
  if (c == sq || c == bq)
   strbuf_addch(sb, bq);
  strbuf_addch(sb, c);
 }
 strbuf_addch(sb, sq);
}

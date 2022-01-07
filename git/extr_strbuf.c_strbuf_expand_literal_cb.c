
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 int hex2chr (char const*) ;
 int strbuf_addch (struct strbuf*,int) ;

size_t strbuf_expand_literal_cb(struct strbuf *sb,
    const char *placeholder,
    void *context)
{
 int ch;

 switch (placeholder[0]) {
 case 'n':
  strbuf_addch(sb, '\n');
  return 1;
 case 'x':

  ch = hex2chr(placeholder + 1);
  if (ch < 0)
   return 0;
  strbuf_addch(sb, ch);
  return 3;
 }
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 int strbuf_addch (struct strbuf*,int) ;

__attribute__((used)) static const char *unquote_quoted_string(struct strbuf *outbuf, const char *in)
{
 int c;
 int take_next_literally = 0;

 while ((c = *in++) != 0) {
  if (take_next_literally == 1) {
   take_next_literally = 0;
  } else {
   switch (c) {
   case '\\':
    take_next_literally = 1;
    continue;
   case '"':
    return in;
   }
  }

  strbuf_addch(outbuf, c);
 }

 return in;
}

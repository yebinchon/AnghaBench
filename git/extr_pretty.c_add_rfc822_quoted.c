
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 int strbuf_addch (struct strbuf*,char const) ;
 int strbuf_grow (struct strbuf*,int) ;

__attribute__((used)) static void add_rfc822_quoted(struct strbuf *out, const char *s, int len)
{
 int i;


 strbuf_grow(out, len + 2);

 strbuf_addch(out, '"');
 for (i = 0; i < len; i++) {
  switch (s[i]) {
  case '"':
  case '\\':
   strbuf_addch(out, '\\');

  default:
   strbuf_addch(out, s[i]);
  }
 }
 strbuf_addch(out, '"');
}

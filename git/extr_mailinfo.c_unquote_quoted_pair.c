
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {char* buf; int len; } ;


 int strbuf_addch (struct strbuf*,int) ;
 int strbuf_init (struct strbuf*,int ) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_swap (struct strbuf*,struct strbuf*) ;
 char* unquote_comment (struct strbuf*,char const*) ;
 char* unquote_quoted_string (struct strbuf*,char const*) ;

__attribute__((used)) static void unquote_quoted_pair(struct strbuf *line)
{
 struct strbuf outbuf;
 const char *in = line->buf;
 int c;

 strbuf_init(&outbuf, line->len);

 while ((c = *in++) != 0) {
  switch (c) {
  case '"':
   in = unquote_quoted_string(&outbuf, in);
   continue;
  case '(':
   in = unquote_comment(&outbuf, in);
   continue;
  }

  strbuf_addch(&outbuf, c);
 }

 strbuf_swap(&outbuf, line);
 strbuf_release(&outbuf);

}

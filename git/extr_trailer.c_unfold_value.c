
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {size_t len; char* buf; } ;


 struct strbuf STRBUF_INIT ;
 scalar_t__ isspace (char) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_grow (struct strbuf*,size_t) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_swap (struct strbuf*,struct strbuf*) ;
 int strbuf_trim (struct strbuf*) ;

__attribute__((used)) static void unfold_value(struct strbuf *val)
{
 struct strbuf out = STRBUF_INIT;
 size_t i;

 strbuf_grow(&out, val->len);
 i = 0;
 while (i < val->len) {
  char c = val->buf[i++];
  if (c == '\n') {

   while (i < val->len && isspace(val->buf[i]))
    i++;
   strbuf_addch(&out, ' ');
  } else {
   strbuf_addch(&out, c);
  }
 }


 strbuf_trim(&out);


 strbuf_swap(&out, val);
 strbuf_release(&out);
}

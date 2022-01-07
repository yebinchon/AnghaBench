
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {size_t len; char* buf; } ;


 int strbuf_addch (struct strbuf*,char) ;

void strbuf_addbuf_percentquote(struct strbuf *dst, const struct strbuf *src)
{
 size_t i, len = src->len;

 for (i = 0; i < len; i++) {
  if (src->buf[i] == '%')
   strbuf_addch(dst, '%');
  strbuf_addch(dst, src->buf[i]);
 }
}

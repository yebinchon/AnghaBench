
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; scalar_t__ len; scalar_t__ alloc; } ;


 int strbuf_grow (struct strbuf*,size_t) ;
 int strbuf_slopbuf ;

void strbuf_init(struct strbuf *sb, size_t hint)
{
 sb->alloc = sb->len = 0;
 sb->buf = strbuf_slopbuf;
 if (hint)
  strbuf_grow(sb, hint);
}

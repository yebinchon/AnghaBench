
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {scalar_t__ len; scalar_t__ buf; } ;


 int memset (scalar_t__,int,size_t) ;
 int strbuf_grow (struct strbuf*,size_t) ;
 int strbuf_setlen (struct strbuf*,scalar_t__) ;

void strbuf_addchars(struct strbuf *sb, int c, size_t n)
{
 strbuf_grow(sb, n);
 memset(sb->buf + sb->len, c, n);
 strbuf_setlen(sb, sb->len + n);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {scalar_t__ len; scalar_t__ buf; } ;


 int memcpy (scalar_t__,scalar_t__,scalar_t__) ;
 int strbuf_grow (struct strbuf*,scalar_t__) ;
 int strbuf_setlen (struct strbuf*,scalar_t__) ;

void strbuf_addbuf(struct strbuf *sb, const struct strbuf *sb2)
{
 strbuf_grow(sb, sb2->len);
 memcpy(sb->buf + sb->len, sb2->buf, sb2->len);
 strbuf_setlen(sb, sb->len + sb2->len);
}

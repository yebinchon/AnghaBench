
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {char* buf; size_t len; } ;


 int strbuf_grow (struct strbuf*,int ) ;
 int strbuf_init (struct strbuf*,int ) ;

char *strbuf_detach(struct strbuf *sb, size_t *sz)
{
 char *res;
 strbuf_grow(sb, 0);
 res = sb->buf;
 if (sz)
  *sz = sb->len;
 strbuf_init(sb, 0);
 return res;
}

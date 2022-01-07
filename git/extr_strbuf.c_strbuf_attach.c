
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {char* buf; size_t len; size_t alloc; } ;


 int strbuf_grow (struct strbuf*,int ) ;
 int strbuf_release (struct strbuf*) ;

void strbuf_attach(struct strbuf *sb, void *buf, size_t len, size_t alloc)
{
 strbuf_release(sb);
 sb->buf = buf;
 sb->len = len;
 sb->alloc = alloc;
 strbuf_grow(sb, 0);
 sb->buf[sb->len] = '\0';
}

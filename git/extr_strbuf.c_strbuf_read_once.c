
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {size_t alloc; size_t len; scalar_t__ buf; } ;
typedef scalar_t__ ssize_t ;


 int strbuf_grow (struct strbuf*,size_t) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_setlen (struct strbuf*,scalar_t__) ;
 scalar_t__ xread (int,scalar_t__,size_t) ;

ssize_t strbuf_read_once(struct strbuf *sb, int fd, size_t hint)
{
 size_t oldalloc = sb->alloc;
 ssize_t cnt;

 strbuf_grow(sb, hint ? hint : 8192);
 cnt = xread(fd, sb->buf + sb->len, sb->alloc - sb->len - 1);
 if (cnt > 0)
  strbuf_setlen(sb, sb->len + cnt);
 else if (oldalloc == 0)
  strbuf_release(sb);
 return cnt;
}

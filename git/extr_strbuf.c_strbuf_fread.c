
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {size_t alloc; scalar_t__ len; scalar_t__ buf; } ;
typedef int FILE ;


 size_t fread (scalar_t__,int,size_t,int *) ;
 int strbuf_grow (struct strbuf*,size_t) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_setlen (struct strbuf*,scalar_t__) ;

size_t strbuf_fread(struct strbuf *sb, size_t size, FILE *f)
{
 size_t res;
 size_t oldalloc = sb->alloc;

 strbuf_grow(sb, size);
 res = fread(sb->buf + sb->len, 1, size, f);
 if (res > 0)
  strbuf_setlen(sb, sb->len + res);
 else if (oldalloc == 0)
  strbuf_release(sb);
 return res;
}

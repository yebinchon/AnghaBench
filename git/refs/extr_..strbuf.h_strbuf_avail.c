
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {size_t alloc; size_t len; } ;



__attribute__((used)) static inline size_t strbuf_avail(const struct strbuf *sb)
{
 return sb->alloc ? sb->alloc - sb->len - 1 : 0;
}

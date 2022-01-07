
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int alloc; size_t len; char* buf; } ;


 int assert (int) ;
 int die (char*) ;
 char* strbuf_slopbuf ;

__attribute__((used)) static inline void strbuf_setlen(struct strbuf *sb, size_t len)
{
 if (len > (sb->alloc ? sb->alloc - 1 : 0))
  die("BUG: strbuf_setlen() beyond buffer");
 sb->len = len;
 if (sb->buf != strbuf_slopbuf)
  sb->buf[len] = '\0';
 else
  assert(!strbuf_slopbuf[0]);
}

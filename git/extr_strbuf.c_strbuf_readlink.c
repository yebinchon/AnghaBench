
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {size_t alloc; int buf; } ;
typedef size_t ssize_t ;


 scalar_t__ ERANGE ;
 size_t STRBUF_MAXLINK ;
 scalar_t__ errno ;
 size_t readlink (char const*,int ,size_t) ;
 int strbuf_grow (struct strbuf*,size_t) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_setlen (struct strbuf*,size_t) ;

int strbuf_readlink(struct strbuf *sb, const char *path, size_t hint)
{
 size_t oldalloc = sb->alloc;

 if (hint < 32)
  hint = 32;

 while (hint < STRBUF_MAXLINK) {
  ssize_t len;

  strbuf_grow(sb, hint);
  len = readlink(path, sb->buf, hint);
  if (len < 0) {
   if (errno != ERANGE)
    break;
  } else if (len < hint) {
   strbuf_setlen(sb, len);
   return 0;
  }


  hint *= 2;
 }
 if (oldalloc == 0)
  strbuf_release(sb);
 return -1;
}

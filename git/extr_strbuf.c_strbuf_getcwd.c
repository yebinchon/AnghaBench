
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {size_t alloc; int buf; } ;


 scalar_t__ EACCES ;
 scalar_t__ ERANGE ;
 size_t PATH_MAX ;
 scalar_t__ errno ;
 scalar_t__ getcwd (int ,size_t) ;
 int strbuf_grow (struct strbuf*,size_t) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_reset (struct strbuf*) ;
 int strbuf_setlen (struct strbuf*,int ) ;
 int strlen (int ) ;

int strbuf_getcwd(struct strbuf *sb)
{
 size_t oldalloc = sb->alloc;
 size_t guessed_len = 128;

 for (;; guessed_len *= 2) {
  strbuf_grow(sb, guessed_len);
  if (getcwd(sb->buf, sb->alloc)) {
   strbuf_setlen(sb, strlen(sb->buf));
   return 0;
  }
  if (errno == EACCES && guessed_len < PATH_MAX)
   continue;

  if (errno != ERANGE)
   break;
 }
 if (oldalloc == 0)
  strbuf_release(sb);
 else
  strbuf_reset(sb);
 return -1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {unsigned char* buf; size_t len; } ;


 int crud (unsigned char) ;
 int strbuf_grow (struct strbuf*,size_t) ;
 size_t strlen (char const*) ;

__attribute__((used)) static void strbuf_addstr_without_crud(struct strbuf *sb, const char *src)
{
 size_t i, len;
 unsigned char c;


 while ((c = *src) != 0) {
  if (!crud(c))
   break;
  src++;
 }


 len = strlen(src);
 while (len > 0) {
  c = src[len-1];
  if (!crud(c))
   break;
  --len;
 }







 strbuf_grow(sb, len);
 for (i = 0; i < len; i++) {
  c = *src++;
  switch (c) {
  case '\n': case '<': case '>':
   continue;
  }
  sb->buf[sb->len++] = c;
 }
 sb->buf[sb->len] = '\0';
}

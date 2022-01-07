
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {char* buf; size_t len; } ;


 scalar_t__ isspace (char) ;
 int memmove (char*,char*,size_t) ;

void strbuf_ltrim(struct strbuf *sb)
{
 char *b = sb->buf;
 while (sb->len > 0 && isspace(*b)) {
  b++;
  sb->len--;
 }
 memmove(sb->buf, b, sb->len);
 sb->buf[sb->len] = '\0';
}

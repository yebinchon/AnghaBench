
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {char* buf; int len; } ;


 char tolower (char) ;

void strbuf_tolower(struct strbuf *sb)
{
 char *p = sb->buf, *end = sb->buf + sb->len;
 for (; p < end; p++)
  *p = tolower(*p);
}

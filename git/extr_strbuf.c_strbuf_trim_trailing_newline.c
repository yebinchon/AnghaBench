
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int len; char* buf; } ;



void strbuf_trim_trailing_newline(struct strbuf *sb)
{
 if (sb->len > 0 && sb->buf[sb->len - 1] == '\n') {
  if (--sb->len > 0 && sb->buf[sb->len - 1] == '\r')
   --sb->len;
  sb->buf[sb->len] = '\0';
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int len; char* buf; } ;


 scalar_t__ is_dir_sep (unsigned char) ;

void strbuf_trim_trailing_dir_sep(struct strbuf *sb)
{
 while (sb->len > 0 && is_dir_sep((unsigned char)sb->buf[sb->len - 1]))
  sb->len--;
 sb->buf[sb->len] = '\0';
}

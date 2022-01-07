
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {char* buf; int len; } ;
typedef int FILE ;


 int EOF ;
 scalar_t__ strbuf_getwholeline (struct strbuf*,int *,char) ;
 int strbuf_setlen (struct strbuf*,int) ;

int strbuf_getline(struct strbuf *sb, FILE *fp)
{
 if (strbuf_getwholeline(sb, fp, '\n'))
  return EOF;
 if (sb->buf[sb->len - 1] == '\n') {
  strbuf_setlen(sb, sb->len - 1);
  if (sb->len && sb->buf[sb->len - 1] == '\r')
   strbuf_setlen(sb, sb->len - 1);
 }
 return 0;
}

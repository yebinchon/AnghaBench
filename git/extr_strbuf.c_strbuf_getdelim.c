
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int* buf; int len; } ;
typedef int FILE ;


 int EOF ;
 scalar_t__ strbuf_getwholeline (struct strbuf*,int *,int) ;
 int strbuf_setlen (struct strbuf*,int) ;

__attribute__((used)) static int strbuf_getdelim(struct strbuf *sb, FILE *fp, int term)
{
 if (strbuf_getwholeline(sb, fp, term))
  return EOF;
 if (sb->buf[sb->len - 1] == term)
  strbuf_setlen(sb, sb->len - 1);
 return 0;
}

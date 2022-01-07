
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int* buf; size_t len; } ;
typedef int FILE ;


 int EOF ;
 scalar_t__ feof (int *) ;
 int flockfile (int *) ;
 int funlockfile (int *) ;
 int getc_unlocked (int *) ;
 int strbuf_avail (struct strbuf*) ;
 int strbuf_grow (struct strbuf*,int) ;
 int strbuf_reset (struct strbuf*) ;

int strbuf_getwholeline(struct strbuf *sb, FILE *fp, int term)
{
 int ch;

 if (feof(fp))
  return EOF;

 strbuf_reset(sb);
 flockfile(fp);
 while ((ch = getc_unlocked(fp)) != EOF) {
  if (!strbuf_avail(sb))
   strbuf_grow(sb, 1);
  sb->buf[sb->len++] = ch;
  if (ch == term)
   break;
 }
 funlockfile(fp);
 if (ch == EOF && sb->len == 0)
  return EOF;

 sb->buf[sb->len] = '\0';
 return 0;
}

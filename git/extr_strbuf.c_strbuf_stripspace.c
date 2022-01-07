
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {size_t len; char* buf; } ;


 size_t cleanup (char*,size_t) ;
 char comment_line_char ;
 char* memchr (char*,char,size_t) ;
 int memmove (char*,char*,size_t) ;
 int strbuf_grow (struct strbuf*,int) ;
 int strbuf_setlen (struct strbuf*,size_t) ;

void strbuf_stripspace(struct strbuf *sb, int skip_comments)
{
 size_t empties = 0;
 size_t i, j, len, newlen;
 char *eol;


 strbuf_grow(sb, 1);

 for (i = j = 0; i < sb->len; i += len, j += newlen) {
  eol = memchr(sb->buf + i, '\n', sb->len - i);
  len = eol ? eol - (sb->buf + i) + 1 : sb->len - i;

  if (skip_comments && len && sb->buf[i] == comment_line_char) {
   newlen = 0;
   continue;
  }
  newlen = cleanup(sb->buf + i, len);


  if (newlen) {
   if (empties > 0 && j > 0)
    sb->buf[j++] = '\n';
   empties = 0;
   memmove(sb->buf + j, sb->buf + i, newlen);
   sb->buf[newlen + j++] = '\n';
  } else {
   empties++;
  }
 }

 strbuf_setlen(sb, j);
}

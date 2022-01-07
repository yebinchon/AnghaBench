
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {size_t len; char* buf; } ;


 scalar_t__ isspace (char) ;
 int strbuf_remove (struct strbuf*,size_t,size_t) ;

__attribute__((used)) static void cleanup_space(struct strbuf *sb)
{
 size_t pos, cnt;
 for (pos = 0; pos < sb->len; pos++) {
  if (isspace(sb->buf[pos])) {
   sb->buf[pos] = ' ';
   for (cnt = 0; isspace(sb->buf[pos + cnt + 1]); cnt++);
   strbuf_remove(sb, pos + 1, cnt);
  }
 }
}

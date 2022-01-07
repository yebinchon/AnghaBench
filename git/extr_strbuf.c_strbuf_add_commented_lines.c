
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
typedef int prefix2 ;
typedef int prefix1 ;


 int add_lines (struct strbuf*,char*,char*,char const*,size_t) ;
 char comment_line_char ;
 int xsnprintf (char*,int,char*,char) ;

void strbuf_add_commented_lines(struct strbuf *out, const char *buf, size_t size)
{
 static char prefix1[3];
 static char prefix2[2];

 if (prefix1[0] != comment_line_char) {
  xsnprintf(prefix1, sizeof(prefix1), "%c ", comment_line_char);
  xsnprintf(prefix2, sizeof(prefix2), "%c", comment_line_char);
 }
 add_lines(out, prefix1, prefix2, buf, size);
}

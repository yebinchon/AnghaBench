
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 int isspace (char) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_rtrim (struct strbuf*) ;

void copy_reflog_msg(struct strbuf *sb, const char *msg)
{
 char c;
 int wasspace = 1;

 strbuf_addch(sb, '\t');
 while ((c = *msg++)) {
  if (wasspace && isspace(c))
   continue;
  wasspace = isspace(c);
  if (wasspace)
   c = ' ';
  strbuf_addch(sb, c);
 }
 strbuf_rtrim(sb);
}

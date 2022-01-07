
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {char* buf; } ;


 scalar_t__ starts_with (char*,char*) ;

__attribute__((used)) static int is_rfc2822_header(const struct strbuf *line)
{
 int ch;
 char *cp = line->buf;


 if (starts_with(cp, "From ") || starts_with(cp, ">From "))
  return 1;

 while ((ch = *cp++)) {
  if (ch == ':')
   return 1;
  if ((33 <= ch && ch <= 57) ||
      (59 <= ch && ch <= 126))
   continue;
  break;
 }
 return 0;
}

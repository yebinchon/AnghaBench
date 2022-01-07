
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {char* buf; int len; } ;


 int isspace (unsigned char) ;
 scalar_t__ starts_with (char*,char*) ;

__attribute__((used)) static inline int patchbreak(const struct strbuf *line)
{
 size_t i;


 if (starts_with(line->buf, "diff -"))
  return 1;


 if (starts_with(line->buf, "Index: "))
  return 1;





 if (line->len < 4)
  return 0;

 if (starts_with(line->buf, "---")) {

  if (line->buf[3] == ' ' && !isspace(line->buf[4]))
   return 1;

  for (i = 3; i < line->len; i++) {
   unsigned char c = line->buf[i];
   if (c == '\n')
    return 1;
   if (!isspace(c))
    break;
  }
  return 0;
 }
 return 0;
}

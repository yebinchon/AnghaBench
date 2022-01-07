
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int utf8_width (char const**,size_t*) ;

__attribute__((used)) static unsigned long sane_truncate_line(char *line, unsigned long len)
{
 const char *cp;
 unsigned long allot;
 size_t l = len;

 cp = line;
 allot = l;
 while (0 < l) {
  (void) utf8_width(&cp, &l);
  if (!cp)
   break;
 }
 return allot - l;
}

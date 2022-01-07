
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ html ;
 int print (char*,...) ;

__attribute__((used)) static void emitString(int len, const char *s) {
 for ( ; len-- > 0; s++)
  if (*s == '&' && html)
   print("&amp;");
  else if (*s == '<' && html)
   print("&lt;");
  else if (*s == '>' && html)
   print("&lt;");
  else if (*s == '"' || *s == '\\')
   print("\\%c", *s);
  else if (*s >= ' ' && *s < 0177)
   print("%c", *s);
  else
   print("\\%d%d%d", (*s>>6)&3, (*s>>3)&7, *s&7);
}

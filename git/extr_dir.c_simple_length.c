
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ is_glob_special (unsigned char) ;

int simple_length(const char *match)
{
 int len = -1;

 for (;;) {
  unsigned char c = *match++;
  len++;
  if (c == '\0' || is_glob_special(c))
   return len;
 }
}

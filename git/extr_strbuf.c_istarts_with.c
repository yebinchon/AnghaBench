
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ tolower (char const) ;

int istarts_with(const char *str, const char *prefix)
{
 for (; ; str++, prefix++)
  if (!*prefix)
   return 1;
  else if (tolower(*str) != tolower(*prefix))
   return 0;
}

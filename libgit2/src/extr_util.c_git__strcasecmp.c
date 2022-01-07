
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ git__tolower (char const) ;

int git__strcasecmp(const char *a, const char *b)
{
 while (*a && *b && git__tolower(*a) == git__tolower(*b))
  ++a, ++b;
 return ((unsigned char)git__tolower(*a) - (unsigned char)git__tolower(*b));
}

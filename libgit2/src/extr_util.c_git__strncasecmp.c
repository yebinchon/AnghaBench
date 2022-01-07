
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ git__tolower (char const) ;

int git__strncasecmp(const char *a, const char *b, size_t sz)
{
 int al, bl;

 do {
  al = (unsigned char)git__tolower(*a);
  bl = (unsigned char)git__tolower(*b);
  ++a, ++b;
 } while (--sz && al && al == bl);

 return al - bl;
}

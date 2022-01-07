
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 scalar_t__ git__tolower (char const) ;

int git__strcasesort_cmp(const char *a, const char *b)
{
 int cmp = 0;

 while (*a && *b) {
  if (*a != *b) {
   if (git__tolower(*a) != git__tolower(*b))
    break;

   if (!cmp)
    cmp = (int)(*(const uint8_t *)a) - (int)(*(const uint8_t *)b);
  }

  ++a, ++b;
 }

 if (*a || *b)
  return (unsigned char)git__tolower(*a) - (unsigned char)git__tolower(*b);

 return cmp;
}

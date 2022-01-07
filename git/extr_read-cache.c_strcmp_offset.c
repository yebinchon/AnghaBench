
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmp (char const*,char const*) ;

int strcmp_offset(const char *s1, const char *s2, size_t *first_change)
{
 size_t k;

 if (!first_change)
  return strcmp(s1, s2);

 for (k = 0; s1[k] == s2[k]; k++)
  if (s1[k] == '\0')
   break;

 *first_change = k;
 return (unsigned char)s1[k] - (unsigned char)s2[k];
}

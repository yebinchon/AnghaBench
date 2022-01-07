
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isspace (unsigned char) ;
 char* strchr (char*,char) ;

__attribute__((used)) static char *next_arg(char **s)
{
 char *ret;

 if (!s || !*s)
  return ((void*)0);
 while (isspace((unsigned char) **s))
  (*s)++;
 if (!**s) {
  *s = ((void*)0);
  return ((void*)0);
 }
 if (**s == '"') {
  ++*s;
  ret = *s;
  *s = strchr(*s, '"');
 } else {
  ret = *s;
  while (**s && !isspace((unsigned char) **s))
   (*s)++;
 }
 if (*s) {
  if (**s)
   *(*s)++ = 0;
  if (!**s)
   *s = ((void*)0);
 }
 return ret;
}

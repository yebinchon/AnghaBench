
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char*,char) ;

char *
char_replace (char *str, char o, char n)
{
  char *p = str;

  if (str == ((void*)0) || *str == '\0')
    return str;

  while ((p = strchr (p, o)) != ((void*)0))
    *p++ = n;

  return str;
}

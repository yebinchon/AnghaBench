
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (char*,char const*,int) ;
 size_t strlen (char const*) ;
 char* xmalloc (int) ;

char *
substring (const char *str, int begin, int len)
{
  char *buffer;
  if (str == ((void*)0))
    return ((void*)0);
  if (begin < 0)
    begin = strlen (str) + begin;
  if (begin < 0)
    begin = 0;
  if (len < 0)
    len = 0;
  if (((size_t) begin) > strlen (str))
    begin = strlen (str);
  if (((size_t) len) > strlen (&str[begin]))
    len = strlen (&str[begin]);
  if ((buffer = xmalloc (len + 1)) == ((void*)0))
    return ((void*)0);
  memcpy (buffer, &(str[begin]), len);
  buffer[len] = '\0';

  return buffer;
}

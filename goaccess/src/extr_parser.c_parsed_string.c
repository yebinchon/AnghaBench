
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (char*,char*,size_t) ;
 char* trim_str (char*) ;
 char* xmalloc (size_t) ;

__attribute__((used)) static char *
parsed_string (const char *pch, char **str, int move_ptr)
{
  char *p;
  size_t len = (pch - *str + 1);

  p = xmalloc (len);
  memcpy (p, *str, (len - 1));
  p[len - 1] = '\0';
  if (move_ptr)
    *str += len - 1;

  return trim_str (p);
}

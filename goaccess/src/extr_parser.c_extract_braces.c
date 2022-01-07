
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptrdiff_t ;


 int memcpy (char*,char*,int) ;
 char* xmalloc (int) ;

__attribute__((used)) static char *
extract_braces (char **p)
{
  char *b1 = ((void*)0), *b2 = ((void*)0), *ret = ((void*)0), *s = *p;
  int esc = 0;
  ptrdiff_t len = 0;


  for (; *s; s++) {
    if (*s == '\\') {
      esc = 1;
    } else if (*s == '{' && !esc) {
      b1 = s;
    } else if (*s == '}' && !esc) {
      b2 = s;
      break;
    } else {
      esc = 0;
    }
  }

  if ((!b1) || (!b2))
    return ((void*)0);
  if ((len = b2 - (b1 + 1)) <= 0)
    return ((void*)0);


  ret = xmalloc (len + 1);
  memcpy (ret, b1 + 1, len);
  ret[len] = '\0';
  (*p) = b2 + 1;

  return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isspace (char) ;
 int need_bs_quote (char) ;

__attribute__((used)) static char *sq_dequote_step(char *arg, char **next)
{
 char *dst = arg;
 char *src = arg;
 char c;

 if (*src != '\'')
  return ((void*)0);
 for (;;) {
  c = *++src;
  if (!c)
   return ((void*)0);
  if (c != '\'') {
   *dst++ = c;
   continue;
  }

  switch (*++src) {
  case '\0':
   *dst = 0;
   if (next)
    *next = ((void*)0);
   return arg;
  case '\\':






   if (need_bs_quote(src[1]) && src[2] == '\'') {
    *dst++ = src[1];
    src += 2;
    continue;
   }

  default:
   if (!next || !isspace(*src))
    return ((void*)0);
   do {
    c = *++src;
   } while (isspace(c));
   *dst = 0;
   *next = src;
   return arg;
  }
 }
}

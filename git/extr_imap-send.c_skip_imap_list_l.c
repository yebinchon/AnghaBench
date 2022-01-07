
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isspace (unsigned char) ;

__attribute__((used)) static int skip_imap_list_l(char **sp, int level)
{
 char *s = *sp;

 for (;;) {
  while (isspace((unsigned char)*s))
   s++;
  if (level && *s == ')') {
   s++;
   break;
  }
  if (*s == '(') {

   s++;
   if (skip_imap_list_l(&s, level + 1))
    goto bail;
  } else if (*s == '"') {

   s++;
   for (; *s != '"'; s++)
    if (!*s)
     goto bail;
   s++;
  } else {

   for (; *s && !isspace((unsigned char)*s); s++)
    if (level && *s == ')')
     break;
  }

  if (!level)
   break;
  if (!*s)
   goto bail;
 }
 *sp = s;
 return 0;

bail:
 return -1;
}

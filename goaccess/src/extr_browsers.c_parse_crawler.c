
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BROWSER_TYPE_LEN ;
 char* strpbrk (char*,char*) ;
 char* xstrdup (char*) ;
 int xstrncpy (char*,char*,int ) ;

__attribute__((used)) static char *
parse_crawler (char *str, char *match, char *type)
{
  char *ptr = ((void*)0);
  int found = 0;

  while (match != str) {
    match--;
    if (*match == ' ' || *match == '+') {
      found = 1;
      break;
    }
  }


  if (match == str)
    return ((void*)0);


  if (found)
    match++;

  if ((ptr = strpbrk (match, "; ")))
    *ptr = '\0';

  if (*match == '\0')
    return ((void*)0);

  xstrncpy (type, "Crawlers", BROWSER_TYPE_LEN);

  return xstrdup (match);
}

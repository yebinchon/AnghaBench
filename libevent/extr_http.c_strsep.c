
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EVUTIL_ASSERT (int) ;
 int strlen (char const*) ;
 char* strstr (char*,char const*) ;

__attribute__((used)) static char *
strsep(char **s, const char *del)
{
 char *d, *tok;
 EVUTIL_ASSERT(strlen(del) == 1);
 if (!s || !*s)
  return ((void*)0);
 tok = *s;
 d = strstr(tok, del);
 if (d) {
  *d = '\0';
  *s = d + 1;
 } else
  *s = ((void*)0);
 return tok;
}

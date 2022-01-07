
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char git__tolower (char const) ;

int gitno__match_host(const char *pattern, const char *host)
{
 for (;;) {
  char c = git__tolower(*pattern++);

  if (c == '\0')
   return *host ? -1 : 0;

  if (c == '*') {
   c = *pattern;

   if (c == '\0')
    return 0;







   while(*host) {
    char h = git__tolower(*host);
    if (c == h)
     return gitno__match_host(pattern, host++);
    if (h == '.')
     return gitno__match_host(pattern, host);
    host++;
   }
   return -1;
  }

  if (c != git__tolower(*host++))
   return -1;
 }

 return -1;
}

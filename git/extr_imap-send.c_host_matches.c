
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcasecmp (char const*,char const*) ;
 char* strchr (char const*,char) ;

__attribute__((used)) static int host_matches(const char *host, const char *pattern)
{
 if (pattern[0] == '*' && pattern[1] == '.') {
  pattern += 2;
  if (!(host = strchr(host, '.')))
   return 0;
  host++;
 }

 return *host && *pattern && !strcasecmp(host, pattern);
}

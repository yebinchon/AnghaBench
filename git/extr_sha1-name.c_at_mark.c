
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char const*) ;
 int strncasecmp (char const*,char const*,int) ;

__attribute__((used)) static inline int at_mark(const char *string, int len,
     const char **suffix, int nr)
{
 int i;

 for (i = 0; i < nr; i++) {
  int suffix_len = strlen(suffix[i]);
  if (suffix_len <= len
      && !strncasecmp(string, suffix[i], suffix_len))
   return suffix_len;
 }
 return 0;
}

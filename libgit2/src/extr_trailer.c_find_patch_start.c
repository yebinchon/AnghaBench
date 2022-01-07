
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ git__prefixcmp (char const*,char*) ;
 char* next_line (char const*) ;

__attribute__((used)) static size_t find_patch_start(const char *str)
{
 const char *s;

 for (s = str; *s; s = next_line(s)) {
  if (git__prefixcmp(s, "---") == 0)
   return s - str;
 }

 return s - str;
}

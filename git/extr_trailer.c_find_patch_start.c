
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isspace (char const) ;
 char* next_line (char const*) ;
 scalar_t__ skip_prefix (char const*,char*,char const**) ;

__attribute__((used)) static size_t find_patch_start(const char *str)
{
 const char *s;

 for (s = str; *s; s = next_line(s)) {
  const char *v;

  if (skip_prefix(s, "---", &v) && isspace(*v))
   return s - str;
 }

 return s - str;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isspace (char const) ;

__attribute__((used)) static inline int is_blank_line(const char *str)
{
 const char *s = str;
 while (*s && *s != '\n' && isspace(*s))
  s++;
 return !*s || *s == '\n';
}

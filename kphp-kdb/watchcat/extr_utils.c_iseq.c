
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
inline int iseq (const char *s1, const char *s2) {
  while (*s1 == *s2 && *s1 != ' ')
    s1++, s2++;
  return *s1 == ' ' && *s2 == ' ';
}

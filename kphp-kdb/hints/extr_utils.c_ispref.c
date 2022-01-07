
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
inline int ispref (const int *s1, const int *s2) {
  while (*s1 == *s2 && *s1 != ' ')
    s1++, s2++;
  return *s1 == ' ';
}

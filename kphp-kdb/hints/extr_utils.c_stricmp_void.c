
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
inline int stricmp_void (const void *x, const void *y) {
  const int *s1 = *(const int **)x;
  const int *s2 = *(const int **)y;
  while (*s1 == *s2 && *s1 != ' ')
    s1++, s2++;
  return *s1 - *s2;
}

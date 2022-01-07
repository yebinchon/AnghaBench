
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
inline int strcmp_void (const void *x, const void *y) {
  const char *s1 = *(const char **)x;
  const char *s2 = *(const char **)y;
  while (*s1 == *s2 && *s1 != ' ')
    s1++, s2++;
  return *s1-*s2;
}

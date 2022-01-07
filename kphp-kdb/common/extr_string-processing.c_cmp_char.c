
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int cmp_char (const void *a, const void *b) {
  return (int)(*(char *)a) - (int)(*(char *)b);
}

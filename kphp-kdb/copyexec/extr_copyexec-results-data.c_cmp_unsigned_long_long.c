
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int cmp_unsigned_long_long (const void *a, const void *b) {
  const unsigned long long x = *((const unsigned long long *) a);
  const unsigned long long y = *((const unsigned long long *) b);
  return (x < y) ? -1 : (x > y) ? 1 : 0;
}

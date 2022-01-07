
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ hash_t ;



__attribute__((used)) static int cmp_hash (const void *a, const void *b) {
  const hash_t *x = (const hash_t *) a,
               *y = (const hash_t *) b;
  return *x < *y ? -1 : *x > *y ? 1 : 0;
}

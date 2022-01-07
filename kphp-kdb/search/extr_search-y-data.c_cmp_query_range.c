
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct query_range {unsigned int maxr; unsigned int minr; } ;



int cmp_query_range (const void *a, const void *b) {
  const struct query_range *x = (const struct query_range *) a;
  const struct query_range *y = (const struct query_range *) b;
  unsigned int c = x->maxr - x->minr;
  unsigned int d = y->maxr - y->minr;
  if (c < d) {
    return -1;
  }
  if (c > d) {
    return 1;
  }
  return 0;
}

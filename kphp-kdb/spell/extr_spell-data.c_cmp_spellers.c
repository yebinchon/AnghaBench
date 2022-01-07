
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct speller {long double** stat; } ;


 size_t sort_idx ;

__attribute__((used)) static int cmp_spellers (const void *a, const void *b) {
  const struct speller **x = (const struct speller **) a, **y = (const struct speller **) b;
  long double u = (*x)->stat[sort_idx][0];
  u *= (*y)->stat[sort_idx][1];
  long double v = (*y)->stat[sort_idx][0];
  v *= (*x)->stat[sort_idx][1];
  if (u > v) {
    return -1;
  }
  if (u < v) {
    return 1;
  }
  return 0;
}

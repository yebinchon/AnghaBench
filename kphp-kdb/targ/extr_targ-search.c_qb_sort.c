
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int max_res; int complexity; } ;
typedef TYPE_1__ query_t ;



void qb_sort (query_t **Qa, int b) {
  if (b <= 0) { return; }
  query_t *t;
  int i = 0, j = b;
  unsigned h = Qa[b >> 1]->max_res;
  int h2 = Qa[b >> 1]->complexity;
  do {
    while ((unsigned) Qa[i]->max_res < h || ((unsigned) Qa[i]->max_res == h && Qa[i]->complexity < h2)) {
      i++;
    }
    while ((unsigned) Qa[j]->max_res > h || ((unsigned) Qa[j]->max_res == h && Qa[j]->complexity > h2)) {
      j--;
    }
    if (i <= j) {
      t = Qa[i]; Qa[i++] = Qa[j]; Qa[j--] = t;
    }
  } while (i <= j);
  qb_sort (Qa, j);
  qb_sort (Qa + i, b - i);
}

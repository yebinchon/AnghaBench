
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {long long freq; } ;
typedef TYPE_1__ word_t ;
struct TYPE_5__ {TYPE_1__* w; } ;
typedef TYPE_2__ pm_cell_t ;



void pm_sort (pm_cell_t *A, int b) {
  int i = 0, j = b;
  word_t *t;
  long long h;
  if (b <= 0) { return; }
  h = A[b >> 1].w->freq;
  do {
    while (A[i].w->freq < h) { i++; }
    while (A[j].w->freq > h) { j--; }
    if (i <= j) {
      t = A[i].w; A[i++].w = A[j].w; A[j--].w = t;
    }
  } while (i <= j);
  pm_sort (A+i, b-i);
  pm_sort (A, j);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ word; scalar_t__ doc_id; } ;
typedef TYPE_1__ pair_t ;


 TYPE_1__* P ;

__attribute__((used)) static void qsort_p (int a, int b) {
  int i, j;
  pair_t h, t;
  if (a >= b) { return; }
  h = P[(a+b)>>1];
  i = a;
  j = b;
  do {
    while (P[i].word < h.word || (P[i].word == h.word && P[i].doc_id < h.doc_id)) { i++; }
    while (P[j].word > h.word || (P[j].word == h.word && P[j].doc_id > h.doc_id)) { j--; }
    if (i <= j) {
      t = P[i]; P[i++] = P[j]; P[j--] = t;
    }
  } while (i <= j);
  qsort_p (a, j);
  qsort_p (i, b);
}

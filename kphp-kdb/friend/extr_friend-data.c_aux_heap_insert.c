
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int date; } ;
typedef TYPE_1__ tree_t ;


 int AUX_HEAP_SIZE ;
 TYPE_1__** H ;
 int HN ;
 int R_max ;
 int assert (int) ;

__attribute__((used)) static void aux_heap_insert (tree_t *I) {
  int r = I->date, i, j;
  if (HN == R_max) {
    if (!HN || H[1]->date >= r) { return; }
    i = 1;
    while (1) {
      j = i*2;
      if (j > HN) { break; }
      if (j < HN && H[j+1]->date < H[j]->date) { j++; }
      if (H[j]->date >= r) { break; }
      H[i] = H[j];
      i = j;
    }
    H[i] = I;
  } else {
    i = ++HN;
    assert (HN < AUX_HEAP_SIZE);
    while (i > 1) {
      j = (i >> 1);
      if (H[j]->date <= r) { break; }
      H[i] = H[j];
      i = j;
    }
    H[i] = I;
  }
}

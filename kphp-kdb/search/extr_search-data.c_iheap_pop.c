
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ item_id; int cur; } ;
typedef TYPE_1__ iheap_en_t ;


 TYPE_1__** H ;
 int HC ;

__attribute__((used)) static void iheap_pop (void) {
  int i, j;
  iheap_en_t *A;

  if (!HC) { return; }
  A = H[1];
  if (!A->cur) {
    A = H[HC--];
    if (!HC) { return; }
  }

  i = 1;
  while (1) {
    j = i*2;
    if (j > HC) { break; }
    if (j < HC && H[j+1]->item_id < H[j]->item_id) { j++; }
    if (A->item_id <= H[j]->item_id) { break; }
    H[i] = H[j];
    i = j;
  }
  H[i] = A;
}

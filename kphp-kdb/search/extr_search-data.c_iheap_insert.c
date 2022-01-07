
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {long long item_id; int cur; } ;
typedef TYPE_1__ iheap_en_t ;


 TYPE_1__** H ;
 int HC ;
 int MAX_WORDS ;
 int assert (int) ;

__attribute__((used)) static void iheap_insert (iheap_en_t *A) {
  int i, j;
  long long item_id = A->item_id;
  assert (HC < MAX_WORDS);
  if (!A->cur) { return; }
  i = ++HC;
  while (i > 1) {
    j = (i >> 1);
    if (H[j]->item_id <= item_id) {
      break;
    }
    H[i] = H[j];
    i = j;
  }
  H[i] = A;
}

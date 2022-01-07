
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ word; TYPE_1__* item; } ;
typedef TYPE_2__ tree_t ;
struct TYPE_8__ {scalar_t__ word; } ;
typedef TYPE_3__ iheap_en_t ;
struct TYPE_6__ {long long item_id; } ;



__attribute__((used)) static inline int ihe_sgn_ext (tree_t *T, iheap_en_t *A, long long item_id) {
  if (T->word < A->word) {
    return -2;
  }
  if (T->word > A->word) {
    return 2;
  }
  if (T->item->item_id < item_id) {
    return -1;
  }
  if (T->item->item_id > item_id) {
    return 1;
  }
  return 0;
}

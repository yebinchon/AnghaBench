
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ word; scalar_t__ doc_id; int position; } ;
typedef TYPE_1__ pair_t ;



__attribute__((used)) static inline int cmp_pair (pair_t *X, pair_t *Y) {
  if (X->word < Y->word) {
    return -1;
  }
  if (X->word > Y->word) {
    return 1;
  }
  if (X->doc_id < Y->doc_id) {
    return -1;
  }
  if (X->doc_id > Y->doc_id) {
    return 1;
  }
  return X->position - Y->position;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ word; } ;
typedef TYPE_1__ searchy_pair_word_position_t ;



inline int cmp_spwp_by_hash (const void *x_, const void *y_) {
  const searchy_pair_word_position_t *x = x_;
  const searchy_pair_word_position_t *y = y_;

  if (x->word < y->word) {
    return -1;
  }
  if (x->word > y->word) {
    return +1;
  }
  return 0;
}

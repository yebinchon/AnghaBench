
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int long_locked_until; int long_lock_heap_pos; } ;
typedef TYPE_1__ transaction_t ;


 TYPE_1__** LH ;
 int LHN ;

__attribute__((used)) static int lock_heap_adjust (int i, transaction_t *T) {
  int j, x = T->long_locked_until;
  while (i > 1) {
    j = (i >> 1);
    if (LH[j]->long_locked_until <= x) {
      break;
    }
    LH[i] = LH[j];
    LH[i]->long_lock_heap_pos = i;
    i = j;
  }
  while (2*i <= LHN) {
    j = 2*i;
    if (j < LHN && LH[j+1]->long_locked_until < LH[j]->long_locked_until) {
      j++;
    }
    if (LH[j]->long_locked_until >= x) {
      break;
    }
    LH[i] = LH[j];
    LH[i]->long_lock_heap_pos = i;
    i = j;
  }
  LH[i] = T;
  T->long_lock_heap_pos = i;
  return i;
}

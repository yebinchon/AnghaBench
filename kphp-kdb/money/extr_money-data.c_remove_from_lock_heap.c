
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int long_lock_heap_pos; } ;
typedef TYPE_1__ transaction_t ;


 TYPE_1__** LH ;
 int LHN ;
 int assert (int) ;
 int lock_heap_adjust (int,TYPE_1__*) ;
 int locked_long_transactions ;

__attribute__((used)) static void remove_from_lock_heap (transaction_t *T) {
  int i = T->long_lock_heap_pos;
  assert (i > 0 && i <= LHN && LH[i] == T);
  T->long_lock_heap_pos = 0;
  locked_long_transactions = --LHN;
  if (i <= LHN) {
    lock_heap_adjust (i, LH[LHN+1]);
  }
}

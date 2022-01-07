
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int transaction_t ;
struct TYPE_2__ {int * prev; } ;


 int assert (int) ;
 TYPE_1__ lru_list ;
 scalar_t__ lru_size ;
 scalar_t__ max_lru_size ;
 scalar_t__ tot_memory_transactions ;
 int transaction_free (int *) ;

__attribute__((used)) static void transaction_lru_gc (void) {
  assert (lru_size == tot_memory_transactions);
  while (lru_size >= max_lru_size) {
    transaction_t *T = lru_list.prev;
    assert (T);
    transaction_free (T);
  }
}

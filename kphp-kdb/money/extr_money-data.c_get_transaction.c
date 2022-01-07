
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {long long transaction_id; struct TYPE_4__* h_next; } ;
typedef TYPE_1__ transaction_t ;


 TYPE_1__** TrHash ;
 int transaction_bucket (long long) ;

transaction_t *get_transaction (long long transaction_id) {
  int b = transaction_bucket (transaction_id);
  transaction_t *ptr;

  for (ptr = TrHash[b]; ptr; ptr = ptr->h_next) {
    if (ptr->transaction_id == transaction_id) {
      return ptr;
    }
  }
  return 0;
}

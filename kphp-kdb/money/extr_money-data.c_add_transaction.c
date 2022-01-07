
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* h_next; int transaction_id; } ;
typedef TYPE_1__ transaction_t ;


 TYPE_1__** TrHash ;
 int assert (int) ;
 int transaction_bucket (int ) ;

__attribute__((used)) static int add_transaction (transaction_t *T) {
  int b = transaction_bucket (T->transaction_id);
  assert (!T->h_next);

  T->h_next = TrHash[b];
  TrHash[b] = T;
  return 0;
}

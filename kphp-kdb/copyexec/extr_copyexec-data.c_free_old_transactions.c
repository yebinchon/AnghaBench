
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {long long binlog_pos; scalar_t__ status; struct TYPE_4__* hnext; } ;
typedef TYPE_1__ transaction_t ;


 TYPE_1__** H ;
 int HASH_MASK ;
 int transaction_free (TYPE_1__*) ;
 scalar_t__ ts_running ;

__attribute__((used)) static void free_old_transactions (long long start_pos) {
  int i;
  for (i = 0; i <= HASH_MASK; i++) {
    transaction_t *head = ((void*)0), *tail = ((void*)0), *P, *W;
    for (P = H[i]; P != ((void*)0); P = W) {
      W = P->hnext;
      if (P->binlog_pos >= start_pos || P->status == ts_running) {
        P->hnext = ((void*)0);
        if (head) {
          tail->hnext = P;
          tail = P;
        } else {
          head = tail = P;
        }
      } else {
        transaction_free (P);
      }
    }
    H[i] = head;
  }
}

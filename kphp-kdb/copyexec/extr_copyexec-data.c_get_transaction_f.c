
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int transaction_id; struct TYPE_4__* hnext; } ;
typedef TYPE_1__ transaction_t ;


 void** H ;
 int HASH_MASK ;
 TYPE_1__* calloc (int,int) ;
 int kprintf (char*) ;
 int tot_memory_transactions ;

transaction_t *get_transaction_f (int id, int force) {
  int h = id & HASH_MASK;
  transaction_t **p = &(H[h]), *q;
  while (1) {
    q = *p;
    if (q == ((void*)0)) {
      break;
    }
    if (q->transaction_id == id) {
      *p = q->hnext;
      if (force >= 0) {
        q->hnext = H[h];
        H[h] = q;
      }
      return q;
    }
    p = &(q->hnext);
  }
  if (force > 0) {

    q = calloc (1, sizeof (transaction_t));
    if (q == ((void*)0)) {
      kprintf ("get_transaction_f: calloc returns NULL. %m\n");
      return ((void*)0);
    }
    tot_memory_transactions++;
    q->transaction_id = id;
    q->hnext = H[h];
    H[h] = q;
    return q;
  }
  return ((void*)0);
}

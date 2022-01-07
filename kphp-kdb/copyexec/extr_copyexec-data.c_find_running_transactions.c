
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ status; struct TYPE_13__* next; struct TYPE_13__* hnext; } ;
typedef TYPE_1__ transaction_t ;
typedef TYPE_1__ tlist_t ;
typedef int A ;


 TYPE_1__** H ;
 int HASH_MASK ;
 int assert (int ) ;
 TYPE_1__ auto_running_list ;
 TYPE_1__** calloc (int,int) ;
 scalar_t__ check_is_running (TYPE_1__*) ;
 int cmp_transaction ;
 int free (TYPE_1__**) ;
 int qsort (TYPE_1__**,int,int,int ) ;
 int tlist_clear (TYPE_1__*) ;
 int tlist_insert (TYPE_1__*,TYPE_1__*) ;
 int transaction_finish_execution (TYPE_1__*,int ) ;
 scalar_t__ ts_running ;
 int vkprintf (int,char*,...) ;

int find_running_transactions (void) {
  int i, r = 0, t = 0;
  tlist_t terminated_list;
  tlist_clear (&terminated_list);
  transaction_t *P;
  for (i = 0; i <= HASH_MASK; i++) {
    for (P = H[i]; P != ((void*)0); P = P->hnext) {
      if (P->status == ts_running) {
        if (check_is_running (P)) {
          vkprintf (4, "tlist_insert (&auto_running_list, %p)\n", P);
          tlist_insert (&auto_running_list, P);
          r++;
        } else {
          vkprintf (4, "tlist_insert (&auto_terminated_list, %p)\n", P);
          tlist_insert (&terminated_list, P);
          t++;
        }
      }
    }
  }

  if (t > 0) {
    transaction_t **A = calloc (t, sizeof (A[0]));
    assert (A != ((void*)0));
    for (P = terminated_list.next, i = 0; P != &terminated_list; P = P->next) {
      A[i++] = P;
    }
    qsort (A, t, sizeof (A[0]), cmp_transaction);
    for (i = 0; i < t; i++) {
      vkprintf (4, "find_running_transactions: call transaction_finish_execution\n");
      transaction_finish_execution (A[i], 0);
    }
    free (A);
    vkprintf (3, "found %d terminated transaction(s)\n", t);
  }

  return r;
}

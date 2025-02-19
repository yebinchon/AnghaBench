
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int parties; char* comment_len; int comment; TYPE_1__* T; int status; int temp_id; int declared_date; int created_at; int transaction_id; } ;
typedef TYPE_3__ transaction_t ;
struct TYPE_9__ {TYPE_2__* acc_type; int acc_id; } ;
typedef TYPE_4__ account_t ;
struct TYPE_7__ {int acc_type_id; int currency; } ;
struct TYPE_6__ {int acc_incr; TYPE_4__* tr_account; } ;


 int fprintf (int ,char*,...) ;
 int stderr ;

__attribute__((used)) static void dump_transaction (transaction_t *T) {
  int i, N;
  fprintf (stderr, "*** DUMPING TRANSACTION %p ***\n", T);
  fprintf (stderr, "trans_id=%lld, date=%d, declared_date=%d, temp_id=%d, status=%d\n",
    T->transaction_id, T->created_at, T->declared_date, T->temp_id, T->status);
  N = T->parties;
  for (i = 0; i < N; i++) {
    account_t *A = T->T[i].tr_account;
    fprintf (stderr, "party #%d: acc=%d:%lld incr=%lld currency=%d\n", i+1, A ? A->acc_type->acc_type_id : 0, A ? A->acc_id : 0, T->T[i].acc_incr, A ? A->acc_type->currency : 0);
  }
  if (T->comment_len) {
    fprintf (stderr, "COMMENT: %.*s\n", T->comment_len, T->comment);
  }
}

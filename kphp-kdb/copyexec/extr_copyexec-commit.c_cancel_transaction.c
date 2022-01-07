
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_copyexec_aux_transaction_cmd_wait {int transaction_id; } ;


 int LEV_COPYEXEC_AUX_TRANSACTION_CMD_CANCEL ;
 int T ;
 int kprintf (char*,...) ;
 struct lev_copyexec_aux_transaction_cmd_wait* tb_alloc_logevent (int *,int ,int) ;
 int transactions ;

__attribute__((used)) static int cancel_transaction (int transaction_id) {
  if (transaction_id < 1) {
    kprintf ("cancel_transaction: X < 1\n");
    return -1;
  }
  if (transaction_id >= transactions + 1) {
    kprintf ("cancel_transaction: X >= current transaction id (X = %d, transaction_id = %d)\n", transaction_id, transactions + 1);
    return -2;
  }
  struct lev_copyexec_aux_transaction_cmd_wait *E = tb_alloc_logevent (&T, LEV_COPYEXEC_AUX_TRANSACTION_CMD_CANCEL, sizeof (struct lev_copyexec_aux_transaction_cmd_wait));
  E->transaction_id = transaction_id;
  return 0;
}

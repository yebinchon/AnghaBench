
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_copyexec_aux_transaction_cmd_kill {int signal; int transaction_id; } ;


 int LEV_COPYEXEC_AUX_TRANSACTION_CMD_KILL ;
 int SIGINT ;
 int SIGKILL ;
 int SIGTERM ;
 int T ;
 int kprintf (char*,...) ;
 struct lev_copyexec_aux_transaction_cmd_kill* tb_alloc_logevent (int *,int ,int) ;
 int transactions ;

__attribute__((used)) static int kill_transaction (int signal, int transaction_id) {
  if (transaction_id < 1) {
    kprintf ("kill_transaction: X < 1\n");
    return -1;
  }
  if (transaction_id >= transactions + 1) {
    kprintf ("kill_transaction: X >= current transaction id (X = %d, transaction_id = %d)\n", transaction_id, transactions + 1);
    return -2;
  }
  if (signal != SIGINT && signal != SIGTERM && signal != SIGKILL) {
    kprintf ("kill_transaction: Unknown signal: %d\n", signal);
    return -3;
  }
  struct lev_copyexec_aux_transaction_cmd_kill *E = tb_alloc_logevent (&T, LEV_COPYEXEC_AUX_TRANSACTION_CMD_KILL, sizeof (struct lev_copyexec_aux_transaction_cmd_kill));
  E->signal = signal;
  E->transaction_id = transaction_id;
  return 0;
}

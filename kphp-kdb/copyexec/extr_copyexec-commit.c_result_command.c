
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_copyexec_aux_transaction_cmd_result {int result; } ;


 int LEV_COPYEXEC_AUX_TRANSACTION_CMD_RESULT ;
 int T ;
 struct lev_copyexec_aux_transaction_cmd_result* tb_alloc_logevent (int *,int ,int) ;

__attribute__((used)) static int result_command (int x) {
  struct lev_copyexec_aux_transaction_cmd_result *E = tb_alloc_logevent (&T, LEV_COPYEXEC_AUX_TRANSACTION_CMD_RESULT, sizeof (struct lev_copyexec_aux_transaction_cmd_result));
  E->result = x;
  return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_copyexec_aux_transaction_cmd_exec {scalar_t__ command_size; int data; } ;
typedef scalar_t__ lev_type_t ;


 scalar_t__ LEV_COPYEXEC_AUX_TRANSACTION_CMD_EXEC_CHECK ;
 scalar_t__ LEV_COPYEXEC_AUX_TRANSACTION_CMD_EXEC_RESULT ;
 int T ;
 int kprintf (char*) ;
 int memcpy (int ,char const*,scalar_t__) ;
 scalar_t__ strlen (char const*) ;
 struct lev_copyexec_aux_transaction_cmd_exec* tb_alloc_logevent (int *,scalar_t__,scalar_t__) ;
 int vkprintf (int,char*,char*,char const*) ;

__attribute__((used)) static int exec_command (const char *cmd, lev_type_t type) {
  char *suffix = "";
  if (type == LEV_COPYEXEC_AUX_TRANSACTION_CMD_EXEC_CHECK) {
    suffix = "_check";
  } else if (type == LEV_COPYEXEC_AUX_TRANSACTION_CMD_EXEC_RESULT) {
    suffix = "_result";
  }
  vkprintf (2, "exec%s %s\n", suffix, cmd);
  if (!(*cmd)) {
    kprintf ("exec_command: empty filename\n");
    return -1;
  }
  struct lev_copyexec_aux_transaction_cmd_exec *E = tb_alloc_logevent (&T, type, sizeof (struct lev_copyexec_aux_transaction_cmd_exec) + strlen (cmd));
  E->command_size = strlen (cmd);
  memcpy (E->data, cmd, E->command_size);
  return 0;
}

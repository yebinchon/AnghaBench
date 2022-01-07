
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_generic {int type; } ;
struct lev_copyexec_aux_transaction_cmd_wait {int transaction_id; } ;
struct lev_copyexec_aux_transaction_cmd_result {int result; } ;
struct lev_copyexec_aux_transaction_cmd_kill {int transaction_id; int signal; } ;
struct lev_copyexec_aux_transaction_cmd_file {int filename_size; int compressed_size; } ;
struct lev_copyexec_aux_transaction_cmd_exec {int command_size; } ;
 int do_cancel (int ) ;
 int do_exec (struct lev_copyexec_aux_transaction_cmd_exec*,int,int) ;
 int do_file (struct lev_copyexec_aux_transaction_cmd_file*) ;
 int do_kill (int ,int ) ;
 int do_result (int ) ;
 int do_wait (int ) ;
 int vkprintf (int,char*,int,int) ;

int transaction_replay_logevent (struct lev_generic *E, int size) {
  int s;
  vkprintf (3, "transaction_replay_logevent (E->type = 0x%x, size = %d)\n", E->type, size);

  switch (E->type) {
    case 131:
      s = sizeof (struct lev_copyexec_aux_transaction_cmd_file);
      if (size < s) {
        return -2;
      }
      s += ((struct lev_copyexec_aux_transaction_cmd_file *) E)->filename_size + ((struct lev_copyexec_aux_transaction_cmd_file *) E)->compressed_size;
      if (size < s) {
        return -2;
      }
      if (do_file ((struct lev_copyexec_aux_transaction_cmd_file *) E) < 0) {
        return -4;
      }
      return s;
    case 134:
      s = sizeof (struct lev_copyexec_aux_transaction_cmd_exec);
      if (size < s) {
        return -2;
      }
      s += ((struct lev_copyexec_aux_transaction_cmd_exec *) E)->command_size;
      if (size < s) {
        return -2;
      }
      if (do_exec (((struct lev_copyexec_aux_transaction_cmd_exec *) E), 0, 0) < 0) {
        return -5;
      }
      return s;
    case 133:
      s = sizeof (struct lev_copyexec_aux_transaction_cmd_exec);
      if (size < s) {
        return -2;
      }
      s += ((struct lev_copyexec_aux_transaction_cmd_exec *) E)->command_size;
      if (size < s) {
        return -2;
      }
      if (do_exec (((struct lev_copyexec_aux_transaction_cmd_exec *) E), 1, 0) < 0) {
        return -6;
      }
      return s;
    case 132:
      s = sizeof (struct lev_copyexec_aux_transaction_cmd_exec);
      if (size < s) {
        return -2;
      }
      s += ((struct lev_copyexec_aux_transaction_cmd_exec *) E)->command_size;
      if (size < s) {
        return -2;
      }
      if (do_exec (((struct lev_copyexec_aux_transaction_cmd_exec *) E), 0, 1) < 0) {
        return -7;
      }
      return s;
    case 128:
      s = sizeof (struct lev_copyexec_aux_transaction_cmd_wait);
      if (size < s) {
        return -2;
      }
      do_wait (((struct lev_copyexec_aux_transaction_cmd_wait *) E)->transaction_id);
      return s;
    case 135:
      s = sizeof (struct lev_copyexec_aux_transaction_cmd_wait);
      if (size < s) {
        return -2;
      }
      do_cancel (((struct lev_copyexec_aux_transaction_cmd_wait *) E)->transaction_id);
      return s;
    case 130:
      s = sizeof (struct lev_copyexec_aux_transaction_cmd_kill);
      if (size < s) {
        return -2;
      }
      do_kill (((struct lev_copyexec_aux_transaction_cmd_kill *) E)->signal, ((struct lev_copyexec_aux_transaction_cmd_kill *) E)->transaction_id);
      return s;
    case 129:
      s = sizeof (struct lev_copyexec_aux_transaction_cmd_result);
      if (size < s) {
        return -2;
      }
      do_result (((struct lev_copyexec_aux_transaction_cmd_result *) E)->result);
      return s;
  }
  return -3;
}

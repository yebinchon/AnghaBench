#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct lev_generic {int type; } ;
struct lev_copyexec_aux_transaction_cmd_wait {int /*<<< orphan*/  transaction_id; } ;
struct lev_copyexec_aux_transaction_cmd_result {int /*<<< orphan*/  result; } ;
struct lev_copyexec_aux_transaction_cmd_kill {int /*<<< orphan*/  transaction_id; int /*<<< orphan*/  signal; } ;
struct lev_copyexec_aux_transaction_cmd_file {int filename_size; int compressed_size; } ;
struct lev_copyexec_aux_transaction_cmd_exec {int command_size; } ;

/* Variables and functions */
#define  LEV_COPYEXEC_AUX_TRANSACTION_CMD_CANCEL 135 
#define  LEV_COPYEXEC_AUX_TRANSACTION_CMD_EXEC 134 
#define  LEV_COPYEXEC_AUX_TRANSACTION_CMD_EXEC_CHECK 133 
#define  LEV_COPYEXEC_AUX_TRANSACTION_CMD_EXEC_RESULT 132 
#define  LEV_COPYEXEC_AUX_TRANSACTION_CMD_FILE 131 
#define  LEV_COPYEXEC_AUX_TRANSACTION_CMD_KILL 130 
#define  LEV_COPYEXEC_AUX_TRANSACTION_CMD_RESULT 129 
#define  LEV_COPYEXEC_AUX_TRANSACTION_CMD_WAIT 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct lev_copyexec_aux_transaction_cmd_exec*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct lev_copyexec_aux_transaction_cmd_file*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,int,int) ; 

int FUNC7 (struct lev_generic *E, int size) {
  int s;
  FUNC6 (3, "transaction_replay_logevent (E->type = 0x%x, size = %d)\n", E->type, size);

  switch (E->type) {
    case LEV_COPYEXEC_AUX_TRANSACTION_CMD_FILE:
      s = sizeof (struct lev_copyexec_aux_transaction_cmd_file);
      if (size < s) {
        return -2;
      }
      s += ((struct lev_copyexec_aux_transaction_cmd_file *) E)->filename_size + ((struct lev_copyexec_aux_transaction_cmd_file *) E)->compressed_size;
      if (size < s) {
        return -2;
      }
      if (FUNC2 ((struct lev_copyexec_aux_transaction_cmd_file *) E) < 0) {
        return -4;
      }
      return s;
    case LEV_COPYEXEC_AUX_TRANSACTION_CMD_EXEC:
      s = sizeof (struct lev_copyexec_aux_transaction_cmd_exec);
      if (size < s) {
        return -2;
      }
      s += ((struct lev_copyexec_aux_transaction_cmd_exec *) E)->command_size;
      if (size < s) {
        return -2;
      }
      if (FUNC1 (((struct lev_copyexec_aux_transaction_cmd_exec *) E), 0, 0) < 0) {
        return -5;
      }
      return s;
    case LEV_COPYEXEC_AUX_TRANSACTION_CMD_EXEC_CHECK:
      s = sizeof (struct lev_copyexec_aux_transaction_cmd_exec);
      if (size < s) {
        return -2;
      }
      s += ((struct lev_copyexec_aux_transaction_cmd_exec *) E)->command_size;
      if (size < s) {
        return -2;
      }
      if (FUNC1 (((struct lev_copyexec_aux_transaction_cmd_exec *) E), 1, 0) < 0) {
        return -6;
      }
      return s;
    case LEV_COPYEXEC_AUX_TRANSACTION_CMD_EXEC_RESULT:
      s = sizeof (struct lev_copyexec_aux_transaction_cmd_exec);
      if (size < s) {
        return -2;
      }
      s += ((struct lev_copyexec_aux_transaction_cmd_exec *) E)->command_size;
      if (size < s) {
        return -2;
      }
      if (FUNC1 (((struct lev_copyexec_aux_transaction_cmd_exec *) E), 0, 1) < 0) {
        return -7;
      }
      return s;
    case LEV_COPYEXEC_AUX_TRANSACTION_CMD_WAIT:
      s = sizeof (struct lev_copyexec_aux_transaction_cmd_wait);
      if (size < s) {
        return -2;
      }
      FUNC5 (((struct lev_copyexec_aux_transaction_cmd_wait *) E)->transaction_id);
      return s;
    case LEV_COPYEXEC_AUX_TRANSACTION_CMD_CANCEL:
      s = sizeof (struct lev_copyexec_aux_transaction_cmd_wait);
      if (size < s) {
        return -2;
      }
      FUNC0 (((struct lev_copyexec_aux_transaction_cmd_wait *) E)->transaction_id);
      return s;
    case LEV_COPYEXEC_AUX_TRANSACTION_CMD_KILL:
      s = sizeof (struct lev_copyexec_aux_transaction_cmd_kill);
      if (size < s) {
        return -2;
      }
      FUNC3 (((struct lev_copyexec_aux_transaction_cmd_kill *) E)->signal, ((struct lev_copyexec_aux_transaction_cmd_kill *) E)->transaction_id);
      return s;
    case LEV_COPYEXEC_AUX_TRANSACTION_CMD_RESULT:
      s = sizeof (struct lev_copyexec_aux_transaction_cmd_result);
      if (size < s) {
        return -2;
      }
      FUNC4 (((struct lev_copyexec_aux_transaction_cmd_result *) E)->result);
      return s;
  }
  return -3;
}
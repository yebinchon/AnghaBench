
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrdb_state ;
typedef int mrb_state ;
typedef scalar_t__ mrb_bool ;
typedef int dbgcmd_state ;


 int DBGST_PROMPT ;
 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 scalar_t__ exe_set_command_all (int *,int *,int ) ;
 int exe_set_command_select (int *,int *,int ) ;
 int mrb_debug_delete_break ;
 int mrb_debug_delete_break_all ;

dbgcmd_state
dbgcmd_delete(mrb_state *mrb, mrdb_state *mrdb)
{
  mrb_bool ret = FALSE;

  ret = exe_set_command_all(mrb, mrdb, mrb_debug_delete_break_all);
  if (ret != TRUE) {
    exe_set_command_select(mrb, mrdb, mrb_debug_delete_break);
  }

  return DBGST_PROMPT;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int wcnt; int dbg; } ;
typedef TYPE_1__ mrdb_state ;
typedef int mrb_state ;
typedef int mrb_bool ;
typedef int int32_t ;
typedef int (* all_command_func ) (int *,int ) ;


 int FALSE ;
 int MRB_DEBUG_OK ;
 int TRUE ;
 int print_api_common_error (int ) ;

__attribute__((used)) static mrb_bool
exe_set_command_all(mrb_state *mrb, mrdb_state *mrdb, all_command_func func)
{
  int32_t ret = MRB_DEBUG_OK;

  if (mrdb->wcnt == 1) {
    ret = func(mrb, mrdb->dbg);
    print_api_common_error(ret);
    return TRUE;
  }
  return FALSE;
}

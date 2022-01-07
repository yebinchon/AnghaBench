
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef int mrb_state ;
struct TYPE_3__ {size_t bpnum; int * bp; } ;
typedef TYPE_1__ mrb_debug_context ;
typedef int int32_t ;


 int MRB_DEBUG_INVALID_ARGUMENT ;
 int MRB_DEBUG_OK ;
 int free_breakpoint (int *,int *) ;

int32_t
mrb_debug_delete_break_all(mrb_state *mrb, mrb_debug_context *dbg)
{
  uint32_t i;

  if ((mrb == ((void*)0)) || (dbg == ((void*)0))) {
    return MRB_DEBUG_INVALID_ARGUMENT;
  }

  for(i = 0 ; i < dbg->bpnum ; i++) {
    free_breakpoint(mrb, &dbg->bp[i]);
  }

  dbg->bpnum = 0;

  return MRB_DEBUG_OK;
}

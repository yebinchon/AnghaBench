
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_5__ {size_t bpnum; TYPE_1__* bp; } ;
typedef TYPE_2__ mrb_debug_context ;
typedef size_t int32_t ;
struct TYPE_4__ {size_t bpno; } ;


 char FALSE ;
 size_t MRB_DEBUG_BREAK_INVALID_NO ;
 char TRUE ;

__attribute__((used)) static int32_t
get_break_index(mrb_debug_context *dbg, uint32_t bpno)
{
  uint32_t i;
  int32_t index;
  char hit = FALSE;

  for(i = 0 ; i < dbg->bpnum; i++) {
    if (dbg->bp[i].bpno == bpno) {
      hit = TRUE;
      index = i;
      break;
    }
  }

  if (hit == FALSE) {
    return MRB_DEBUG_BREAK_INVALID_NO;
  }

  return index;
}

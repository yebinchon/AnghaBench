
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_4__ {int * iseq; } ;
typedef TYPE_1__ mrb_irep ;
typedef int mrb_code ;
typedef int mrb_bool ;


 int FALSE ;
 int TRUE ;
 scalar_t__ mrb_debug_get_line (TYPE_1__*,int) ;

__attribute__((used)) static mrb_bool
check_start_pc_for_line(mrb_irep *irep, mrb_code *pc, uint16_t line)
{
  if (pc > irep->iseq) {
    if (line == mrb_debug_get_line(irep, pc - irep->iseq - 1)) {
      return FALSE;
    }
  }
  return TRUE;
}

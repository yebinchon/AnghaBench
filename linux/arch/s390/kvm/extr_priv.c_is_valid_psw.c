
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mask; int addr; } ;
typedef TYPE_1__ psw_t ;


 int PSW_ADDR_24 ;
 int PSW_ADDR_31 ;
 int PSW_MASK_ADDR_MODE ;
 int PSW_MASK_BA ;
 int PSW_MASK_EA ;
 int PSW_MASK_UNASSIGNED ;

int is_valid_psw(psw_t *psw)
{
 if (psw->mask & PSW_MASK_UNASSIGNED)
  return 0;
 if ((psw->mask & PSW_MASK_ADDR_MODE) == PSW_MASK_BA) {
  if (psw->addr & ~PSW_ADDR_31)
   return 0;
 }
 if (!(psw->mask & PSW_MASK_ADDR_MODE) && (psw->addr & ~PSW_ADDR_24))
  return 0;
 if ((psw->mask & PSW_MASK_ADDR_MODE) == PSW_MASK_EA)
  return 0;
 if (psw->addr & 1)
  return 0;
 return 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct locked_reg {scalar_t__ reg; scalar_t__ key; } ;
struct TYPE_2__ {struct locked_reg* locked; } ;


 int MAX_LOCKED_REGS ;
 TYPE_1__ dscr ;

__attribute__((used)) static struct locked_reg *find_locked_reg(u32 reg)
{
 int i;

 for (i = 0; i < MAX_LOCKED_REGS; i++)
  if (dscr.locked[i].key && reg == dscr.locked[i].reg)
   return &dscr.locked[i];
 return ((void*)0);
}

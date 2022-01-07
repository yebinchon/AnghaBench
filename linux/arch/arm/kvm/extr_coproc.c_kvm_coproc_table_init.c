
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int (* reset ) (int *,TYPE_1__*) ;} ;


 unsigned int ARRAY_SIZE (TYPE_1__*) ;
 int BUG_ON (int ) ;
 unsigned int cache_levels ;
 int check_reg_table (TYPE_1__*,unsigned int) ;
 TYPE_1__* cp15_regs ;
 TYPE_1__* invariant_cp15 ;
 int stub1 (int *,TYPE_1__*) ;

void kvm_coproc_table_init(void)
{
 unsigned int i;


 BUG_ON(check_reg_table(cp15_regs, ARRAY_SIZE(cp15_regs)));
 BUG_ON(check_reg_table(invariant_cp15, ARRAY_SIZE(invariant_cp15)));


 for (i = 0; i < ARRAY_SIZE(invariant_cp15); i++)
  invariant_cp15[i].reset(((void*)0), &invariant_cp15[i]);
 asm volatile("mrc p15, 1, %0, c0, c0, 1" : "=r" (cache_levels));
 for (i = 0; i < 7; i++)
  if (((cache_levels >> (i*3)) & 7) == 0)
   break;

 cache_levels &= (1 << (i*3))-1;
}

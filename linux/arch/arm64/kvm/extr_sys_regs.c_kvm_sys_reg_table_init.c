
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct sys_reg_desc {unsigned int val; } ;
struct TYPE_10__ {int (* reset ) (int *,TYPE_1__*) ;} ;


 unsigned int ARRAY_SIZE (TYPE_1__*) ;
 int BUG_ON (int ) ;
 unsigned int cache_levels ;
 int check_sysreg_table (TYPE_1__*,unsigned int) ;
 TYPE_1__* cp14_64_regs ;
 TYPE_1__* cp14_regs ;
 TYPE_1__* cp15_64_regs ;
 TYPE_1__* cp15_regs ;
 int get_clidr_el1 (int *,struct sys_reg_desc*) ;
 TYPE_1__* invariant_sys_regs ;
 int stub1 (int *,TYPE_1__*) ;
 TYPE_1__* sys_reg_descs ;

void kvm_sys_reg_table_init(void)
{
 unsigned int i;
 struct sys_reg_desc clidr;


 BUG_ON(check_sysreg_table(sys_reg_descs, ARRAY_SIZE(sys_reg_descs)));
 BUG_ON(check_sysreg_table(cp14_regs, ARRAY_SIZE(cp14_regs)));
 BUG_ON(check_sysreg_table(cp14_64_regs, ARRAY_SIZE(cp14_64_regs)));
 BUG_ON(check_sysreg_table(cp15_regs, ARRAY_SIZE(cp15_regs)));
 BUG_ON(check_sysreg_table(cp15_64_regs, ARRAY_SIZE(cp15_64_regs)));
 BUG_ON(check_sysreg_table(invariant_sys_regs, ARRAY_SIZE(invariant_sys_regs)));


 for (i = 0; i < ARRAY_SIZE(invariant_sys_regs); i++)
  invariant_sys_regs[i].reset(((void*)0), &invariant_sys_regs[i]);
 get_clidr_el1(((void*)0), &clidr);
 cache_levels = clidr.val;
 for (i = 0; i < 7; i++)
  if (((cache_levels >> (i*3)) & 7) == 0)
   break;

 cache_levels &= (1 << (i*3))-1;
}

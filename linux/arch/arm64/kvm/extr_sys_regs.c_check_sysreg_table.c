
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sys_reg_desc {int dummy; } ;


 scalar_t__ cmp_sys_reg (struct sys_reg_desc const*,struct sys_reg_desc const*) ;
 int kvm_err (char*,struct sys_reg_desc const*,unsigned int) ;

__attribute__((used)) static int check_sysreg_table(const struct sys_reg_desc *table, unsigned int n)
{
 unsigned int i;

 for (i = 1; i < n; i++) {
  if (cmp_sys_reg(&table[i-1], &table[i]) >= 0) {
   kvm_err("sys_reg table %p out of order (%d)\n", table, i - 1);
   return 1;
  }
 }

 return 0;
}

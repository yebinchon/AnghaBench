
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct coproc_reg {int dummy; } ;


 scalar_t__ cmp_reg (struct coproc_reg const*,struct coproc_reg const*) ;
 int kvm_err (char*,struct coproc_reg const*,unsigned int) ;

__attribute__((used)) static int check_reg_table(const struct coproc_reg *table, unsigned int n)
{
 unsigned int i;

 for (i = 1; i < n; i++) {
  if (cmp_reg(&table[i-1], &table[i]) >= 0) {
   kvm_err("reg table %p out of order (%d)\n", table, i - 1);
   return 1;
  }
 }

 return 0;
}

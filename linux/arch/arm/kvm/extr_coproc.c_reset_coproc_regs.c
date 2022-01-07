
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
struct coproc_reg {int reg; scalar_t__ is_64bit; int (* reset ) (struct kvm_vcpu*,struct coproc_reg const*) ;} ;


 int NR_CP15_REGS ;
 int set_bit (int,unsigned long*) ;
 int stub1 (struct kvm_vcpu*,struct coproc_reg const*) ;

__attribute__((used)) static void reset_coproc_regs(struct kvm_vcpu *vcpu,
         const struct coproc_reg *table, size_t num,
         unsigned long *bmap)
{
 unsigned long i;

 for (i = 0; i < num; i++)
  if (table[i].reset) {
   int reg = table[i].reg;

   table[i].reset(vcpu, &table[i]);
   if (reg > 0 && reg < NR_CP15_REGS) {
    set_bit(reg, bmap);
    if (table[i].is_64bit)
     set_bit(reg + 1, bmap);
   }
  }
}

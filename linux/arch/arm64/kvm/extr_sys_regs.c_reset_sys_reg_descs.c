
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sys_reg_desc {int reg; int (* reset ) (struct kvm_vcpu*,struct sys_reg_desc const*) ;} ;
struct kvm_vcpu {int dummy; } ;


 int NR_SYS_REGS ;
 int set_bit (int,unsigned long*) ;
 int stub1 (struct kvm_vcpu*,struct sys_reg_desc const*) ;

__attribute__((used)) static void reset_sys_reg_descs(struct kvm_vcpu *vcpu,
    const struct sys_reg_desc *table, size_t num,
    unsigned long *bmap)
{
 unsigned long i;

 for (i = 0; i < num; i++)
  if (table[i].reset) {
   int reg = table[i].reg;

   table[i].reset(vcpu, &table[i]);
   if (reg > 0 && reg < NR_SYS_REGS)
    set_bit(reg, bmap);
  }
}

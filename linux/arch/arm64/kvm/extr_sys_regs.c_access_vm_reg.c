
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct sys_reg_params {int regval; int is_32bit; scalar_t__ is_aarch32; int is_write; } ;
struct sys_reg_desc {int reg; } ;
struct kvm_vcpu {int dummy; } ;


 int BUG_ON (int) ;
 int kvm_toggle_cache (struct kvm_vcpu*,int) ;
 int lower_32_bits (int) ;
 scalar_t__ upper_32_bits (int) ;
 int vcpu_has_cache_enabled (struct kvm_vcpu*) ;
 int vcpu_read_sys_reg (struct kvm_vcpu*,int) ;
 int vcpu_write_sys_reg (struct kvm_vcpu*,int,int) ;

__attribute__((used)) static bool access_vm_reg(struct kvm_vcpu *vcpu,
     struct sys_reg_params *p,
     const struct sys_reg_desc *r)
{
 bool was_enabled = vcpu_has_cache_enabled(vcpu);
 u64 val;
 int reg = r->reg;

 BUG_ON(!p->is_write);


 if (p->is_aarch32)
  reg = r->reg / 2;

 if (!p->is_aarch32 || !p->is_32bit) {
  val = p->regval;
 } else {
  val = vcpu_read_sys_reg(vcpu, reg);
  if (r->reg % 2)
   val = (p->regval << 32) | (u64)lower_32_bits(val);
  else
   val = ((u64)upper_32_bits(val) << 32) |
    lower_32_bits(p->regval);
 }
 vcpu_write_sys_reg(vcpu, val, reg);

 kvm_toggle_cache(vcpu, was_enabled);
 return 1;
}

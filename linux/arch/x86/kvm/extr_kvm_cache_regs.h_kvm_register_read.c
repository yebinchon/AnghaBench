
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long* regs; int regs_avail; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
typedef enum kvm_reg { ____Placeholder_kvm_reg } kvm_reg ;
struct TYPE_4__ {int (* cache_reg ) (struct kvm_vcpu*,int) ;} ;


 TYPE_2__* kvm_x86_ops ;
 int stub1 (struct kvm_vcpu*,int) ;
 int test_bit (int,unsigned long*) ;

__attribute__((used)) static inline unsigned long kvm_register_read(struct kvm_vcpu *vcpu,
           enum kvm_reg reg)
{
 if (!test_bit(reg, (unsigned long *)&vcpu->arch.regs_avail))
  kvm_x86_ops->cache_reg(vcpu, reg);

 return vcpu->arch.regs[reg];
}

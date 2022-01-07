
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int ulong ;
struct TYPE_3__ {int cr3; int regs_avail; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct TYPE_4__ {int (* decache_cr3 ) (struct kvm_vcpu*) ;} ;


 int VCPU_EXREG_CR3 ;
 TYPE_2__* kvm_x86_ops ;
 int stub1 (struct kvm_vcpu*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static inline ulong kvm_read_cr3(struct kvm_vcpu *vcpu)
{
 if (!test_bit(VCPU_EXREG_CR3, (ulong *)&vcpu->arch.regs_avail))
  kvm_x86_ops->decache_cr3(vcpu);
 return vcpu->arch.cr3;
}

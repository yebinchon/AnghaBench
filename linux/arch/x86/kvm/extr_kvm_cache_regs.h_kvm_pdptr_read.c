
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_5__ {TYPE_1__* walk_mmu; int regs_avail; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
typedef enum kvm_reg { ____Placeholder_kvm_reg } kvm_reg ;
struct TYPE_6__ {int (* cache_reg ) (struct kvm_vcpu*,int) ;} ;
struct TYPE_4__ {int * pdptrs; } ;


 scalar_t__ VCPU_EXREG_PDPTR ;
 TYPE_3__* kvm_x86_ops ;
 int might_sleep () ;
 int stub1 (struct kvm_vcpu*,int) ;
 int test_bit (scalar_t__,unsigned long*) ;

__attribute__((used)) static inline u64 kvm_pdptr_read(struct kvm_vcpu *vcpu, int index)
{
 might_sleep();

 if (!test_bit(VCPU_EXREG_PDPTR,
        (unsigned long *)&vcpu->arch.regs_avail))
  kvm_x86_ops->cache_reg(vcpu, (enum kvm_reg)VCPU_EXREG_PDPTR);

 return vcpu->arch.walk_mmu->pdptrs[index];
}

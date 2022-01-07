
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int count_ctl; int count_resume; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
typedef int ktime_t ;


 int KVM_REG_MIPS_COUNT_CTL_DC ;
 int ktime_get () ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline ktime_t kvm_mips_count_time(struct kvm_vcpu *vcpu)
{
 if (unlikely(vcpu->arch.count_ctl & KVM_REG_MIPS_COUNT_CTL_DC))
  return vcpu->arch.count_resume;

 return ktime_get();
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pgm; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int kvm_s390_inject_prog_irq (struct kvm_vcpu*,int *) ;

__attribute__((used)) static inline int kvm_s390_inject_prog_cond(struct kvm_vcpu *vcpu, int rc)
{
 if (rc <= 0)
  return rc;
 return kvm_s390_inject_prog_irq(vcpu, &vcpu->arch.pgm);
}

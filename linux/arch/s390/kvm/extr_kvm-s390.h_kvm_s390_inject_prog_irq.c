
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_vcpu {int dummy; } ;
struct kvm_s390_pgm_info {int dummy; } ;
struct TYPE_2__ {struct kvm_s390_pgm_info pgm; } ;
struct kvm_s390_irq {TYPE_1__ u; int type; } ;


 int KVM_S390_PROGRAM_INT ;
 int kvm_s390_inject_vcpu (struct kvm_vcpu*,struct kvm_s390_irq*) ;

__attribute__((used)) static inline int kvm_s390_inject_prog_irq(struct kvm_vcpu *vcpu,
        struct kvm_s390_pgm_info *pgm_info)
{
 struct kvm_s390_irq irq = {
  .type = KVM_S390_PROGRAM_INT,
  .u.pgm = *pgm_info,
 };

 return kvm_s390_inject_vcpu(vcpu, &irq);
}

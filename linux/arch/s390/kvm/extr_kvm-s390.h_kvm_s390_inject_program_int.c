
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_3__ {int code; } ;
struct TYPE_4__ {TYPE_1__ pgm; } ;
struct kvm_s390_irq {TYPE_2__ u; int type; } ;


 int KVM_S390_PROGRAM_INT ;
 int kvm_s390_inject_vcpu (struct kvm_vcpu*,struct kvm_s390_irq*) ;

__attribute__((used)) static inline int kvm_s390_inject_program_int(struct kvm_vcpu *vcpu, u16 code)
{
 struct kvm_s390_irq irq = {
  .type = KVM_S390_PROGRAM_INT,
  .u.pgm.code = code,
 };

 return kvm_s390_inject_vcpu(vcpu, &irq);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hflags; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int HF_SMM_MASK ;

__attribute__((used)) static inline bool is_smm(struct kvm_vcpu *vcpu)
{
 return vcpu->arch.hflags & HF_SMM_MASK;
}

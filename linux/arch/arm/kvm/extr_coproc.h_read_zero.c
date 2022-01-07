
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
struct coproc_params {int Rt1; } ;


 scalar_t__* vcpu_reg (struct kvm_vcpu*,int ) ;

__attribute__((used)) static inline bool read_zero(struct kvm_vcpu *vcpu,
        const struct coproc_params *p)
{
 *vcpu_reg(vcpu, p->Rt1) = 0;
 return 1;
}

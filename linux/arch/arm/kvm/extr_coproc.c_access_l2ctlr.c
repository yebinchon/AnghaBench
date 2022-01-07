
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
struct coproc_reg {int dummy; } ;
struct coproc_params {int Rt1; scalar_t__ is_write; } ;


 int c9_L2CTLR ;
 int ignore_write (struct kvm_vcpu*,struct coproc_params const*) ;
 int vcpu_cp15 (struct kvm_vcpu*,int ) ;
 int * vcpu_reg (struct kvm_vcpu*,int ) ;

__attribute__((used)) static bool access_l2ctlr(struct kvm_vcpu *vcpu,
     const struct coproc_params *p,
     const struct coproc_reg *r)
{
 if (p->is_write)
  return ignore_write(vcpu, p);

 *vcpu_reg(vcpu, p->Rt1) = vcpu_cp15(vcpu, c9_L2CTLR);
 return 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int EMULATE_DONE ;
 int EMULATE_FAIL ;
 scalar_t__ TMRN_TMCFG0 ;
 int TMRN_TMCFG0_NATHRD_SHIFT ;
 scalar_t__ get_tmrn (unsigned int) ;
 int kvmppc_set_gpr (struct kvm_vcpu*,int,int) ;

__attribute__((used)) static int kvmppc_e500_emul_mftmr(struct kvm_vcpu *vcpu, unsigned int inst,
      int rt)
{

 if (get_tmrn(inst) == TMRN_TMCFG0) {
  kvmppc_set_gpr(vcpu, rt,
          1 | (1 << TMRN_TMCFG0_NATHRD_SHIFT));
  return EMULATE_DONE;
 }

 return EMULATE_FAIL;
}

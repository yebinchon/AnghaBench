
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong ;
struct kvm_vcpu {int dummy; } ;


 int EMULATE_FAIL ;

__attribute__((used)) static int kvmppc_core_emulate_mfspr_hv(struct kvm_vcpu *vcpu, int sprn,
     ulong *spr_val)
{
 return EMULATE_FAIL;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvmppc_book3s_shadow_vcpu {int slb_max; int slb; scalar_t__ in_use; } ;
struct kvm_vcpu {int cpu; } ;
struct TYPE_2__ {int slb_shadow_max; int slb_shadow; } ;


 int CPU_FTR_ARCH_207S ;
 int CPU_FTR_HVMODE ;
 int FSCR_TAR_LG ;
 int LPCR_AIL_3 ;
 int MSR_FP ;
 int MSR_VEC ;
 int MSR_VSX ;
 int SPRN_LPCR ;
 scalar_t__ cpu_has_feature (int ) ;
 int kvmppc_copy_from_svcpu (struct kvm_vcpu*) ;
 int kvmppc_giveup_ext (struct kvm_vcpu*,int) ;
 int kvmppc_giveup_fac (struct kvm_vcpu*,int ) ;
 scalar_t__ kvmppc_is_split_real (struct kvm_vcpu*) ;
 int kvmppc_save_tm_pr (struct kvm_vcpu*) ;
 int kvmppc_unfixup_split_real (struct kvm_vcpu*) ;
 int memcpy (int ,int ,int) ;
 int mfspr (int ) ;
 int mtspr (int ,int) ;
 struct kvmppc_book3s_shadow_vcpu* svcpu_get (struct kvm_vcpu*) ;
 int svcpu_put (struct kvmppc_book3s_shadow_vcpu*) ;
 TYPE_1__* to_book3s (struct kvm_vcpu*) ;

__attribute__((used)) static void kvmppc_core_vcpu_put_pr(struct kvm_vcpu *vcpu)
{
 if (kvmppc_is_split_real(vcpu))
  kvmppc_unfixup_split_real(vcpu);

 kvmppc_giveup_ext(vcpu, MSR_FP | MSR_VEC | MSR_VSX);
 kvmppc_giveup_fac(vcpu, FSCR_TAR_LG);
 kvmppc_save_tm_pr(vcpu);


 if (cpu_has_feature(CPU_FTR_HVMODE) &&
     cpu_has_feature(CPU_FTR_ARCH_207S))
  mtspr(SPRN_LPCR, mfspr(SPRN_LPCR) | LPCR_AIL_3);

 vcpu->cpu = -1;
}

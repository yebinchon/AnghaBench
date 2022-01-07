
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct kvmppc_book3s_shadow_vcpu {scalar_t__ in_use; int slb_max; int slb; } ;
struct TYPE_6__ {int shadow_vcpu; } ;
struct kvm_vcpu {TYPE_2__ arch; int cpu; } ;
struct TYPE_5__ {int kvm_shadow_vcpu; } ;
struct TYPE_8__ {TYPE_1__ thread; } ;
struct TYPE_7__ {int slb_shadow_max; int slb_shadow; } ;


 int CPU_FTR_ARCH_207S ;
 int CPU_FTR_HVMODE ;
 int LPCR_AIL ;
 int SPRN_LPCR ;
 scalar_t__ cpu_has_feature (int ) ;
 TYPE_4__* current ;
 int kvmppc_fixup_split_real (struct kvm_vcpu*) ;
 scalar_t__ kvmppc_is_split_real (struct kvm_vcpu*) ;
 int kvmppc_restore_tm_pr (struct kvm_vcpu*) ;
 int memcpy (int ,int ,int) ;
 int mfspr (int ) ;
 int mtspr (int ,int) ;
 int smp_processor_id () ;
 struct kvmppc_book3s_shadow_vcpu* svcpu_get (struct kvm_vcpu*) ;
 int svcpu_put (struct kvmppc_book3s_shadow_vcpu*) ;
 TYPE_3__* to_book3s (struct kvm_vcpu*) ;

__attribute__((used)) static void kvmppc_core_vcpu_load_pr(struct kvm_vcpu *vcpu, int cpu)
{
 if (cpu_has_feature(CPU_FTR_HVMODE) &&
     cpu_has_feature(CPU_FTR_ARCH_207S))
  mtspr(SPRN_LPCR, mfspr(SPRN_LPCR) & ~LPCR_AIL);

 vcpu->cpu = smp_processor_id();




 if (kvmppc_is_split_real(vcpu))
  kvmppc_fixup_split_real(vcpu);

 kvmppc_restore_tm_pr(vcpu);
}

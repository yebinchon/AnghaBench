
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int id; } ;
struct TYPE_6__ {TYPE_1__* mmu; TYPE_2__ apf; } ;
struct kvm_vcpu {int vcpu_id; TYPE_3__ arch; } ;
struct kvm_arch_async_pf {int token; int cr3; int direct_map; int gfn; } ;
typedef int gva_t ;
typedef int gfn_t ;
struct TYPE_4__ {int (* get_cr3 ) (struct kvm_vcpu*) ;int direct_map; } ;


 int kvm_setup_async_pf (struct kvm_vcpu*,int ,int ,struct kvm_arch_async_pf*) ;
 int kvm_vcpu_gfn_to_hva (struct kvm_vcpu*,int ) ;
 int stub1 (struct kvm_vcpu*) ;

__attribute__((used)) static int kvm_arch_setup_async_pf(struct kvm_vcpu *vcpu, gva_t gva, gfn_t gfn)
{
 struct kvm_arch_async_pf arch;

 arch.token = (vcpu->arch.apf.id++ << 12) | vcpu->vcpu_id;
 arch.gfn = gfn;
 arch.direct_map = vcpu->arch.mmu->direct_map;
 arch.cr3 = vcpu->arch.mmu->get_cr3(vcpu);

 return kvm_setup_async_pf(vcpu, gva, kvm_vcpu_gfn_to_hva(vcpu, gfn), &arch);
}

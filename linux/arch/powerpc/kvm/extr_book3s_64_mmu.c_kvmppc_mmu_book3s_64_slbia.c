
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int slb_nr; TYPE_1__* slb; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct TYPE_3__ {int valid; scalar_t__ origv; scalar_t__ orige; } ;


 int MSR_IR ;
 int dprintk (char*) ;
 int kvmppc_get_msr (struct kvm_vcpu*) ;
 int kvmppc_get_pc (struct kvm_vcpu*) ;
 int kvmppc_mmu_flush_segments (struct kvm_vcpu*) ;
 int kvmppc_mmu_map_segment (struct kvm_vcpu*,int ) ;

__attribute__((used)) static void kvmppc_mmu_book3s_64_slbia(struct kvm_vcpu *vcpu)
{
 int i;

 dprintk("KVM MMU: slbia()\n");

 for (i = 1; i < vcpu->arch.slb_nr; i++) {
  vcpu->arch.slb[i].valid = 0;
  vcpu->arch.slb[i].orige = 0;
  vcpu->arch.slb[i].origv = 0;
 }

 if (kvmppc_get_msr(vcpu) & MSR_IR) {
  kvmppc_mmu_flush_segments(vcpu);
  kvmppc_mmu_map_segment(vcpu, kvmppc_get_pc(vcpu));
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong ;
typedef int u32 ;
struct kvm_vcpu {int dummy; } ;


 int SID_SHIFT ;
 int kvmppc_mmu_map_segment (struct kvm_vcpu*,int) ;
 int kvmppc_set_sr (struct kvm_vcpu*,int,int ) ;

__attribute__((used)) static void kvmppc_mmu_book3s_32_mtsrin(struct kvm_vcpu *vcpu, u32 srnum,
     ulong value)
{
 kvmppc_set_sr(vcpu, srnum, value);
 kvmppc_mmu_map_segment(vcpu, srnum << SID_SHIFT);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kvm_vcpu {int dummy; } ;


 int kvmppc_get_sr (struct kvm_vcpu*,int ) ;

__attribute__((used)) static u32 kvmppc_mmu_book3s_32_mfsrin(struct kvm_vcpu *vcpu, u32 srnum)
{
 return kvmppc_get_sr(vcpu, srnum);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kvm_vcpu {int dummy; } ;
typedef int gva_t ;


 int kvmppc_get_sr (struct kvm_vcpu*,int) ;

__attribute__((used)) static u32 find_sr(struct kvm_vcpu *vcpu, gva_t eaddr)
{
 return kvmppc_get_sr(vcpu, (eaddr >> 28) & 0xf);
}

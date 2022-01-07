
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong ;
typedef int u64 ;
typedef int u32 ;
struct kvm_vcpu {int dummy; } ;


 int dprintk (char*,int,int) ;
 int kvmppc_mmu_book3s_64_slbmte (struct kvm_vcpu*,int,int) ;

__attribute__((used)) static void kvmppc_mmu_book3s_64_mtsrin(struct kvm_vcpu *vcpu, u32 srnum,
     ulong value)
{
 u64 rb = 0, rs = 0;
 dprintk("KVM MMU: mtsrin(0x%x, 0x%lx)\n", srnum, value);


 rb |= (srnum & 0xf) << 28;

 rb |= 1 << 27;

 rb |= srnum;


 rs |= (value & 0xfffffff) << 12;

 rs |= ((value >> 28) & 0x7) << 9;

 kvmppc_mmu_book3s_64_slbmte(vcpu, rs, rb);
}

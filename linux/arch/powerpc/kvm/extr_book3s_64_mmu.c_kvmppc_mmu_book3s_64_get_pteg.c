
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long long u64 ;
typedef int u32 ;
struct kvmppc_vcpu_book3s {int sdr1; } ;
struct kvmppc_slb {int vsid; scalar_t__ tb; } ;
struct TYPE_2__ {scalar_t__ papr_enabled; } ;
struct kvm_vcpu {int kvm; TYPE_1__ arch; } ;
typedef unsigned long long hva_t ;
typedef int gva_t ;


 int MMU_SEGSIZE_1T ;
 int MMU_SEGSIZE_256M ;
 unsigned long long PAGE_MASK ;
 unsigned long long PAGE_SHIFT ;
 int dprintk (char*,int ,int,unsigned long long,int ) ;
 unsigned long long gfn_to_hva (int ,unsigned long long) ;
 unsigned long long hpt_hash (unsigned long long,int ,int ) ;
 scalar_t__ kvm_is_error_hva (unsigned long long) ;
 int kvmppc_mmu_book3s_64_get_pagesize (struct kvmppc_slb*) ;
 unsigned long long kvmppc_slb_calc_vpn (struct kvmppc_slb*,int ) ;
 int page ;
 struct kvmppc_vcpu_book3s* to_book3s (struct kvm_vcpu*) ;

__attribute__((used)) static hva_t kvmppc_mmu_book3s_64_get_pteg(struct kvm_vcpu *vcpu,
    struct kvmppc_slb *slbe, gva_t eaddr,
    bool second)
{
 struct kvmppc_vcpu_book3s *vcpu_book3s = to_book3s(vcpu);
 u64 hash, pteg, htabsize;
 u32 ssize;
 hva_t r;
 u64 vpn;

 htabsize = ((1 << ((vcpu_book3s->sdr1 & 0x1f) + 11)) - 1);

 vpn = kvmppc_slb_calc_vpn(slbe, eaddr);
 ssize = slbe->tb ? MMU_SEGSIZE_1T : MMU_SEGSIZE_256M;
 hash = hpt_hash(vpn, kvmppc_mmu_book3s_64_get_pagesize(slbe), ssize);
 if (second)
  hash = ~hash;
 hash &= ((1ULL << 39ULL) - 1ULL);
 hash &= htabsize;
 hash <<= 7ULL;

 pteg = vcpu_book3s->sdr1 & 0xfffffffffffc0000ULL;
 pteg |= hash;

 dprintk("MMU: page=0x%x sdr1=0x%llx pteg=0x%llx vsid=0x%llx\n",
  page, vcpu_book3s->sdr1, pteg, slbe->vsid);



 if (vcpu->arch.papr_enabled)
  r = pteg;
 else
  r = gfn_to_hva(vcpu->kvm, pteg >> PAGE_SHIFT);

 if (kvm_is_error_hva(r))
  return r;
 return r | (pteg & ~PAGE_MASK);
}

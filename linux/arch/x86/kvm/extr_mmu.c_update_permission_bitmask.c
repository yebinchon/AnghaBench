
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct kvm_vcpu {int dummy; } ;
struct kvm_mmu {int* permissions; int nx; } ;


 int ACC_EXEC_MASK ;
 int ACC_USER_MASK ;
 int ACC_WRITE_MASK ;
 unsigned int ARRAY_SIZE (int*) ;
 int BYTE_MASK (int ) ;
 unsigned int PFERR_FETCH_MASK ;
 unsigned int PFERR_RSVD_MASK ;
 unsigned int PFERR_USER_MASK ;
 unsigned int PFERR_WRITE_MASK ;
 int X86_CR4_SMAP ;
 int X86_CR4_SMEP ;
 int is_write_protection (struct kvm_vcpu*) ;
 scalar_t__ kvm_read_cr4_bits (struct kvm_vcpu*,int ) ;

__attribute__((used)) static void update_permission_bitmask(struct kvm_vcpu *vcpu,
          struct kvm_mmu *mmu, bool ept)
{
 unsigned byte;

 const u8 x = BYTE_MASK(ACC_EXEC_MASK);
 const u8 w = BYTE_MASK(ACC_WRITE_MASK);
 const u8 u = BYTE_MASK(ACC_USER_MASK);

 bool cr4_smep = kvm_read_cr4_bits(vcpu, X86_CR4_SMEP) != 0;
 bool cr4_smap = kvm_read_cr4_bits(vcpu, X86_CR4_SMAP) != 0;
 bool cr0_wp = is_write_protection(vcpu);

 for (byte = 0; byte < ARRAY_SIZE(mmu->permissions); ++byte) {
  unsigned pfec = byte << 1;







  u8 wf = (pfec & PFERR_WRITE_MASK) ? (u8)~w : 0;

  u8 uf = (pfec & PFERR_USER_MASK) ? (u8)~u : 0;

  u8 ff = (pfec & PFERR_FETCH_MASK) ? (u8)~x : 0;

  u8 smepf = 0;

  u8 smapf = 0;

  if (!ept) {

   u8 kf = (pfec & PFERR_USER_MASK) ? 0 : u;


   if (!mmu->nx)
    ff = 0;


   if (!cr0_wp)
    wf = (pfec & PFERR_USER_MASK) ? wf : 0;


   if (cr4_smep)
    smepf = (pfec & PFERR_FETCH_MASK) ? kf : 0;
   if (cr4_smap)
    smapf = (pfec & (PFERR_RSVD_MASK|PFERR_FETCH_MASK)) ? 0 : kf;
  }

  mmu->permissions[byte] = ff | uf | wf | smepf | smapf;
 }
}

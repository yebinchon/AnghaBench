
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
struct kvm_mmu {unsigned int pkru_mask; int permissions; } ;


 unsigned int ARRAY_SIZE (int ) ;
 unsigned int PFERR_FETCH_MASK ;
 unsigned int PFERR_RSVD_MASK ;
 unsigned int PFERR_USER_MASK ;
 unsigned int PFERR_WRITE_MASK ;
 int X86_CR4_PKE ;
 int is_long_mode (struct kvm_vcpu*) ;
 int is_write_protection (struct kvm_vcpu*) ;
 int kvm_read_cr4_bits (struct kvm_vcpu*,int ) ;

__attribute__((used)) static void update_pkru_bitmask(struct kvm_vcpu *vcpu, struct kvm_mmu *mmu,
    bool ept)
{
 unsigned bit;
 bool wp;

 if (ept) {
  mmu->pkru_mask = 0;
  return;
 }


 if (!kvm_read_cr4_bits(vcpu, X86_CR4_PKE) || !is_long_mode(vcpu)) {
  mmu->pkru_mask = 0;
  return;
 }

 wp = is_write_protection(vcpu);

 for (bit = 0; bit < ARRAY_SIZE(mmu->permissions); ++bit) {
  unsigned pfec, pkey_bits;
  bool check_pkey, check_write, ff, uf, wf, pte_user;

  pfec = bit << 1;
  ff = pfec & PFERR_FETCH_MASK;
  uf = pfec & PFERR_USER_MASK;
  wf = pfec & PFERR_WRITE_MASK;


  pte_user = pfec & PFERR_RSVD_MASK;





  check_pkey = (!ff && pte_user);




  check_write = check_pkey && wf && (uf || wp);


  pkey_bits = !!check_pkey;

  pkey_bits |= (!!check_write) << 1;

  mmu->pkru_mask |= (pkey_bits & 3) << pfec;
 }
}

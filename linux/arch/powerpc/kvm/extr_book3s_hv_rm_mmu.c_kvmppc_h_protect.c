
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned long u64 ;
struct revmap_entry {unsigned long guest_rpte; } ;
struct kvm_vcpu {struct kvm* kvm; } ;
struct TYPE_4__ {int * rev; scalar_t__ virt; } ;
struct TYPE_3__ {int mmio_update; TYPE_2__ hpt; } ;
struct kvm {TYPE_1__ arch; } ;
typedef int __be64 ;


 int CPU_FTR_ARCH_300 ;
 unsigned long HPTE_R_C ;
 unsigned long HPTE_R_KEY_HI ;
 unsigned long HPTE_R_KEY_LO ;
 unsigned long HPTE_R_N ;
 unsigned long HPTE_R_PP ;
 unsigned long HPTE_R_PP0 ;
 unsigned long HPTE_R_R ;
 unsigned long HPTE_V_ABSENT ;
 unsigned long HPTE_V_HVLOCK ;
 unsigned long HPTE_V_VALID ;
 unsigned long H_AVPN ;
 long H_FUNCTION ;
 long H_NOT_FOUND ;
 long H_PARAMETER ;
 long H_SUCCESS ;
 int __unlock_hpte (int *,unsigned long) ;
 int atomic64_inc (int *) ;
 unsigned long be64_to_cpu (int ) ;
 unsigned long compute_tlbie_rb (unsigned long,unsigned long,unsigned long) ;
 scalar_t__ cpu_has_feature (int ) ;
 int cpu_relax () ;
 int cpu_to_be64 (unsigned long) ;
 int do_tlbies (struct kvm*,unsigned long*,int,int ,int) ;
 int global_invalidates (struct kvm*) ;
 scalar_t__ hpte_is_writable (unsigned long) ;
 unsigned long hpte_make_readonly (unsigned long) ;
 unsigned long hpte_new_to_old_v (unsigned long,unsigned long) ;
 scalar_t__ is_mmio_hpte (unsigned long,unsigned long) ;
 scalar_t__ kvm_is_radix (struct kvm*) ;
 unsigned long kvmppc_hpt_npte (TYPE_2__*) ;
 int note_hpte_modification (struct kvm*,struct revmap_entry*) ;
 struct revmap_entry* real_vmalloc_addr (int *) ;
 int try_lock_hpte (int *,unsigned long) ;
 int unlock_hpte (int *,unsigned long) ;

long kvmppc_h_protect(struct kvm_vcpu *vcpu, unsigned long flags,
        unsigned long pte_index, unsigned long avpn,
        unsigned long va)
{
 struct kvm *kvm = vcpu->kvm;
 __be64 *hpte;
 struct revmap_entry *rev;
 unsigned long v, r, rb, mask, bits;
 u64 pte_v, pte_r;

 if (kvm_is_radix(kvm))
  return H_FUNCTION;
 if (pte_index >= kvmppc_hpt_npte(&kvm->arch.hpt))
  return H_PARAMETER;

 hpte = (__be64 *)(kvm->arch.hpt.virt + (pte_index << 4));
 while (!try_lock_hpte(hpte, HPTE_V_HVLOCK))
  cpu_relax();
 v = pte_v = be64_to_cpu(hpte[0]);
 if (cpu_has_feature(CPU_FTR_ARCH_300))
  v = hpte_new_to_old_v(v, be64_to_cpu(hpte[1]));
 if ((v & (HPTE_V_ABSENT | HPTE_V_VALID)) == 0 ||
     ((flags & H_AVPN) && (v & ~0x7fUL) != avpn)) {
  __unlock_hpte(hpte, pte_v);
  return H_NOT_FOUND;
 }

 pte_r = be64_to_cpu(hpte[1]);
 bits = (flags << 55) & HPTE_R_PP0;
 bits |= (flags << 48) & HPTE_R_KEY_HI;
 bits |= flags & (HPTE_R_PP | HPTE_R_N | HPTE_R_KEY_LO);


 mask = HPTE_R_PP0 | HPTE_R_PP | HPTE_R_N |
  HPTE_R_KEY_HI | HPTE_R_KEY_LO;
 rev = real_vmalloc_addr(&kvm->arch.hpt.rev[pte_index]);
 if (rev) {
  r = (rev->guest_rpte & ~mask) | bits;
  rev->guest_rpte = r;
  note_hpte_modification(kvm, rev);
 }


 if (v & HPTE_V_VALID) {





  r = (pte_r & ~mask) | bits;
  if (hpte_is_writable(r) && !hpte_is_writable(pte_r))
   r = hpte_make_readonly(r);

  if (r != pte_r) {
   rb = compute_tlbie_rb(v, r, pte_index);
   hpte[0] = cpu_to_be64((pte_v & ~HPTE_V_VALID) |
           HPTE_V_ABSENT);
   do_tlbies(kvm, &rb, 1, global_invalidates(kvm), 1);

   r |= be64_to_cpu(hpte[1]) & (HPTE_R_R | HPTE_R_C);
   hpte[1] = cpu_to_be64(r);
  }
 }
 unlock_hpte(hpte, pte_v & ~HPTE_V_HVLOCK);
 asm volatile("ptesync" : : : "memory");
 if (is_mmio_hpte(v, pte_r))
  atomic64_inc(&kvm->arch.mmio_update);

 return H_SUCCESS;
}

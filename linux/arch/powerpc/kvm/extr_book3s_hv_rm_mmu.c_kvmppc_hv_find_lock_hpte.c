
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ virt; } ;
struct TYPE_3__ {TYPE_2__ hpt; } ;
struct kvm {TYPE_1__ arch; } ;
typedef unsigned long gva_t ;
typedef int __be64 ;


 int CPU_FTR_ARCH_300 ;
 unsigned long HPTE_V_AVPN ;
 unsigned long HPTE_V_HVLOCK ;
 unsigned long HPTE_V_LARGE ;
 unsigned long HPTE_V_SECONDARY ;
 unsigned long SLB_VSID_B ;
 unsigned long SLB_VSID_B_1T ;
 unsigned long SLB_VSID_L ;
 unsigned long SLB_VSID_LP ;
 unsigned long SLB_VSID_SHIFT ;
 unsigned long SLB_VSID_SHIFT_1T ;
 int __unlock_hpte (int *,unsigned long) ;
 unsigned long be64_to_cpu (int ) ;
 scalar_t__ cpu_has_feature (int ) ;
 int cpu_relax () ;
 unsigned long hpte_new_to_old_r (unsigned long) ;
 unsigned long hpte_new_to_old_v (unsigned long,unsigned long) ;
 unsigned long kvmppc_hpt_mask (TYPE_2__*) ;
 unsigned int kvmppc_hpte_base_page_shift (unsigned long,unsigned long) ;
 unsigned int* slb_base_page_shift ;
 int try_lock_hpte (int *,unsigned long) ;

long kvmppc_hv_find_lock_hpte(struct kvm *kvm, gva_t eaddr, unsigned long slb_v,
         unsigned long valid)
{
 unsigned int i;
 unsigned int pshift;
 unsigned long somask;
 unsigned long vsid, hash;
 unsigned long avpn;
 __be64 *hpte;
 unsigned long mask, val;
 unsigned long v, r, orig_v;


 mask = SLB_VSID_B | HPTE_V_AVPN | HPTE_V_SECONDARY;
 val = 0;
 pshift = 12;
 if (slb_v & SLB_VSID_L) {
  mask |= HPTE_V_LARGE;
  val |= HPTE_V_LARGE;
  pshift = slb_base_page_shift[(slb_v & SLB_VSID_LP) >> 4];
 }
 if (slb_v & SLB_VSID_B_1T) {
  somask = (1UL << 40) - 1;
  vsid = (slb_v & ~SLB_VSID_B) >> SLB_VSID_SHIFT_1T;
  vsid ^= vsid << 25;
 } else {
  somask = (1UL << 28) - 1;
  vsid = (slb_v & ~SLB_VSID_B) >> SLB_VSID_SHIFT;
 }
 hash = (vsid ^ ((eaddr & somask) >> pshift)) & kvmppc_hpt_mask(&kvm->arch.hpt);
 avpn = slb_v & ~(somask >> 16);
 avpn |= (eaddr & somask) >> 16;

 if (pshift >= 24)
  avpn &= ~((1UL << (pshift - 16)) - 1);
 else
  avpn &= ~0x7fUL;
 val |= avpn;

 for (;;) {
  hpte = (__be64 *)(kvm->arch.hpt.virt + (hash << 7));

  for (i = 0; i < 16; i += 2) {

   v = be64_to_cpu(hpte[i]) & ~HPTE_V_HVLOCK;
   if (cpu_has_feature(CPU_FTR_ARCH_300))
    v = hpte_new_to_old_v(v, be64_to_cpu(hpte[i+1]));


   if (!(v & valid) || (v & mask) != val)
    continue;


   while (!try_lock_hpte(&hpte[i], HPTE_V_HVLOCK))
    cpu_relax();
   v = orig_v = be64_to_cpu(hpte[i]) & ~HPTE_V_HVLOCK;
   r = be64_to_cpu(hpte[i+1]);
   if (cpu_has_feature(CPU_FTR_ARCH_300)) {
    v = hpte_new_to_old_v(v, r);
    r = hpte_new_to_old_r(r);
   }




   if ((v & valid) && (v & mask) == val &&
       kvmppc_hpte_base_page_shift(v, r) == pshift)

    return (hash << 3) + (i >> 1);

   __unlock_hpte(&hpte[i], orig_v);
  }

  if (val & HPTE_V_SECONDARY)
   break;
  val |= HPTE_V_SECONDARY;
  hash = hash ^ kvmppc_hpt_mask(&kvm->arch.hpt);
 }
 return -1;
}

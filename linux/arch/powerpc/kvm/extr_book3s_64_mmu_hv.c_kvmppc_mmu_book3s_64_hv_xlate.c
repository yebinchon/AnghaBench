
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct kvmppc_slb {unsigned long origv; } ;
struct kvmppc_pte {int eaddr; unsigned long vpage; int may_execute; int raddr; int may_write; int may_read; } ;
struct TYPE_9__ {int msr; } ;
struct TYPE_10__ {int amr; TYPE_4__ shregs; } ;
struct kvm_vcpu {TYPE_5__ arch; struct kvm* kvm; } ;
struct TYPE_7__ {TYPE_1__* rev; scalar_t__ virt; } ;
struct TYPE_8__ {unsigned long vrma_slb_v; TYPE_2__ hpt; } ;
struct kvm {TYPE_3__ arch; } ;
typedef int gva_t ;
typedef int __be64 ;
struct TYPE_6__ {unsigned long guest_rpte; } ;


 int CPU_FTR_ARCH_300 ;
 int EINVAL ;
 int ENOENT ;
 unsigned long HPTE_R_G ;
 unsigned long HPTE_R_N ;
 unsigned long HPTE_R_PP ;
 unsigned long HPTE_R_PP0 ;
 int HPTE_V_ABSENT ;
 unsigned long HPTE_V_AVPN ;
 unsigned long HPTE_V_HVLOCK ;
 int HPTE_V_VALID ;
 int MSR_DR ;
 int MSR_IR ;
 int MSR_PR ;
 unsigned long SLB_VSID_KP ;
 unsigned long SLB_VSID_KS ;
 unsigned long be64_to_cpu (int ) ;
 scalar_t__ cpu_has_feature (int ) ;
 int hpte_get_skey_perm (unsigned long,int ) ;
 unsigned long hpte_new_to_old_v (unsigned long,unsigned long) ;
 int hpte_read_permission (unsigned long,unsigned long) ;
 int hpte_write_permission (unsigned long,unsigned long) ;
 scalar_t__ kvm_is_radix (struct kvm*) ;
 long kvmppc_hv_find_lock_hpte (struct kvm*,int,unsigned long,int) ;
 struct kvmppc_slb* kvmppc_mmu_book3s_hv_find_slbe (struct kvm_vcpu*,int) ;
 int kvmppc_mmu_get_real_addr (unsigned long,unsigned long,int) ;
 int kvmppc_mmu_radix_xlate (struct kvm_vcpu*,int,struct kvmppc_pte*,int,int) ;
 int preempt_disable () ;
 int preempt_enable () ;
 int unlock_hpte (int *,unsigned long) ;

__attribute__((used)) static int kvmppc_mmu_book3s_64_hv_xlate(struct kvm_vcpu *vcpu, gva_t eaddr,
   struct kvmppc_pte *gpte, bool data, bool iswrite)
{
 struct kvm *kvm = vcpu->kvm;
 struct kvmppc_slb *slbe;
 unsigned long slb_v;
 unsigned long pp, key;
 unsigned long v, orig_v, gr;
 __be64 *hptep;
 long int index;
 int virtmode = vcpu->arch.shregs.msr & (data ? MSR_DR : MSR_IR);

 if (kvm_is_radix(vcpu->kvm))
  return kvmppc_mmu_radix_xlate(vcpu, eaddr, gpte, data, iswrite);


 if (virtmode) {
  slbe = kvmppc_mmu_book3s_hv_find_slbe(vcpu, eaddr);
  if (!slbe)
   return -EINVAL;
  slb_v = slbe->origv;
 } else {

  slb_v = vcpu->kvm->arch.vrma_slb_v;
 }

 preempt_disable();

 index = kvmppc_hv_find_lock_hpte(kvm, eaddr, slb_v,
      HPTE_V_VALID | HPTE_V_ABSENT);
 if (index < 0) {
  preempt_enable();
  return -ENOENT;
 }
 hptep = (__be64 *)(kvm->arch.hpt.virt + (index << 4));
 v = orig_v = be64_to_cpu(hptep[0]) & ~HPTE_V_HVLOCK;
 if (cpu_has_feature(CPU_FTR_ARCH_300))
  v = hpte_new_to_old_v(v, be64_to_cpu(hptep[1]));
 gr = kvm->arch.hpt.rev[index].guest_rpte;

 unlock_hpte(hptep, orig_v);
 preempt_enable();

 gpte->eaddr = eaddr;
 gpte->vpage = ((v & HPTE_V_AVPN) << 4) | ((eaddr >> 12) & 0xfff);


 pp = gr & (HPTE_R_PP0 | HPTE_R_PP);
 key = (vcpu->arch.shregs.msr & MSR_PR) ? SLB_VSID_KP : SLB_VSID_KS;
 key &= slb_v;


 gpte->may_read = hpte_read_permission(pp, key);
 gpte->may_write = hpte_write_permission(pp, key);
 gpte->may_execute = gpte->may_read && !(gr & (HPTE_R_N | HPTE_R_G));


 if (data && virtmode) {
  int amrfield = hpte_get_skey_perm(gr, vcpu->arch.amr);
  if (amrfield & 1)
   gpte->may_read = 0;
  if (amrfield & 2)
   gpte->may_write = 0;
 }


 gpte->raddr = kvmppc_mmu_get_real_addr(v, gr, eaddr);
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kvm {int dummy; } ;
typedef int __be64 ;


 int CPU_FTR_ARCH_300 ;
 int HPTE_R_R ;
 int be64_to_cpu (int ) ;
 unsigned long compute_tlbie_rb (int,int,unsigned long) ;
 scalar_t__ cpu_has_feature (int ) ;
 int do_tlbies (struct kvm*,unsigned long*,int,int,int) ;
 int hpte_new_to_old_r (int) ;
 int hpte_new_to_old_v (int,int) ;

void kvmppc_clear_ref_hpte(struct kvm *kvm, __be64 *hptep,
      unsigned long pte_index)
{
 unsigned long rb;
 unsigned char rbyte;
 u64 hp0, hp1;

 hp0 = be64_to_cpu(hptep[0]);
 hp1 = be64_to_cpu(hptep[1]);
 if (cpu_has_feature(CPU_FTR_ARCH_300)) {
  hp0 = hpte_new_to_old_v(hp0, hp1);
  hp1 = hpte_new_to_old_r(hp1);
 }
 rb = compute_tlbie_rb(hp0, hp1, pte_index);
 rbyte = (be64_to_cpu(hptep[1]) & ~HPTE_R_R) >> 8;

 *((char *)hptep + 14) = rbyte;
 do_tlbies(kvm, &rb, 1, 1, 0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long lpid; unsigned long host_lpcr; int vrma_slb_v; int radix; int mmu_ready; unsigned long lpcr; int threads_indep; int smt_mode; int emul_smt_mode; int debugfs_dir; int tlb_sets; int * resize_hpt; void* host_lpid; void* host_sdr1; int enabled_hcalls; int need_tlb_flush; int mmu_setup_lock; } ;
struct kvm {TYPE_1__ arch; } ;
typedef int buf ;
struct TYPE_4__ {int pid; } ;


 int CPU_FTR_ARCH_207S ;
 int CPU_FTR_ARCH_300 ;
 int CPU_FTR_HVMODE ;
 int ENOMEM ;
 unsigned long LPCR_DPFD_SH ;
 unsigned long LPCR_GTSE ;
 unsigned long LPCR_HDICE ;
 unsigned long LPCR_HEIC ;
 unsigned long LPCR_HR ;
 unsigned long LPCR_HVICE ;
 unsigned long LPCR_LPES ;
 unsigned long LPCR_ONL ;
 unsigned long LPCR_PECE ;
 unsigned long LPCR_UPRT ;
 unsigned long LPCR_VPM0 ;
 unsigned long LPCR_VPM1 ;
 int POWER7_TLB_SETS ;
 int POWER8_TLB_SETS ;
 int POWER9_TLB_SETS_HASH ;
 int POWER9_TLB_SETS_RADIX ;
 int SLB_VSID_B_1T ;
 int SLB_VSID_SHIFT_1T ;
 int SPRN_LPCR ;
 int SPRN_LPID ;
 int SPRN_SDR1 ;
 int VRMA_VSID ;
 scalar_t__ cpu_has_feature (int ) ;
 int cpumask_setall (int *) ;
 TYPE_2__* current ;
 int debugfs_create_dir (char*,int ) ;
 int default_enabled_hcalls ;
 int indep_threads_mode ;
 int kvm_debugfs_dir ;
 int kvm_hv_vm_activated () ;
 int kvmhv_radix_debugfs_init (struct kvm*) ;
 int kvmhv_vm_nested_init (struct kvm*) ;
 int kvmppc_alloc_host_rm_ops () ;
 unsigned long kvmppc_alloc_lpid () ;
 int kvmppc_free_lpid (unsigned long) ;
 int kvmppc_init_vm_radix (struct kvm*) ;
 int kvmppc_mmu_debugfs_init (struct kvm*) ;
 int kvmppc_setup_partition_table (struct kvm*) ;
 int memcpy (int ,int ,int) ;
 void* mfspr (int ) ;
 int mutex_init (int *) ;
 int pr_warn (char*) ;
 scalar_t__ radix_enabled () ;
 int snprintf (char*,int,char*,int) ;
 int threads_per_subcore ;
 scalar_t__ xics_on_xive () ;

__attribute__((used)) static int kvmppc_core_init_vm_hv(struct kvm *kvm)
{
 unsigned long lpcr, lpid;
 char buf[32];
 int ret;

 mutex_init(&kvm->arch.mmu_setup_lock);



 lpid = kvmppc_alloc_lpid();
 if ((long)lpid < 0)
  return -ENOMEM;
 kvm->arch.lpid = lpid;

 kvmppc_alloc_host_rm_ops();

 kvmhv_vm_nested_init(kvm);
 if (!cpu_has_feature(CPU_FTR_ARCH_300))
  cpumask_setall(&kvm->arch.need_tlb_flush);


 memcpy(kvm->arch.enabled_hcalls, default_enabled_hcalls,
        sizeof(kvm->arch.enabled_hcalls));

 if (!cpu_has_feature(CPU_FTR_ARCH_300))
  kvm->arch.host_sdr1 = mfspr(SPRN_SDR1);


 if (cpu_has_feature(CPU_FTR_HVMODE)) {
  kvm->arch.host_lpid = mfspr(SPRN_LPID);
  kvm->arch.host_lpcr = lpcr = mfspr(SPRN_LPCR);
  lpcr &= LPCR_PECE | LPCR_LPES;
 } else {
  lpcr = 0;
 }
 lpcr |= (4UL << LPCR_DPFD_SH) | LPCR_HDICE |
  LPCR_VPM0 | LPCR_VPM1;
 kvm->arch.vrma_slb_v = SLB_VSID_B_1T |
  (VRMA_VSID << SLB_VSID_SHIFT_1T);

 if (cpu_has_feature(CPU_FTR_ARCH_207S))
  lpcr |= LPCR_ONL;







 if (cpu_has_feature(CPU_FTR_ARCH_300)) {
  lpcr &= ~LPCR_VPM0;
  lpcr |= LPCR_HVICE | LPCR_HEIC;





  if (xics_on_xive())
   lpcr |= LPCR_LPES;
 }




 if (radix_enabled()) {
  kvm->arch.radix = 1;
  kvm->arch.mmu_ready = 1;
  lpcr &= ~LPCR_VPM1;
  lpcr |= LPCR_UPRT | LPCR_GTSE | LPCR_HR;
  ret = kvmppc_init_vm_radix(kvm);
  if (ret) {
   kvmppc_free_lpid(kvm->arch.lpid);
   return ret;
  }
  kvmppc_setup_partition_table(kvm);
 }

 kvm->arch.lpcr = lpcr;


 kvm->arch.resize_hpt = ((void*)0);





 if (radix_enabled())
  kvm->arch.tlb_sets = POWER9_TLB_SETS_RADIX;
 else if (cpu_has_feature(CPU_FTR_ARCH_300))
  kvm->arch.tlb_sets = POWER9_TLB_SETS_HASH;
 else if (cpu_has_feature(CPU_FTR_ARCH_207S))
  kvm->arch.tlb_sets = POWER8_TLB_SETS;
 else
  kvm->arch.tlb_sets = POWER7_TLB_SETS;







 if (cpu_has_feature(CPU_FTR_ARCH_300)) {
  if (!indep_threads_mode && !cpu_has_feature(CPU_FTR_HVMODE)) {
   pr_warn("KVM: Ignoring indep_threads_mode=N in nested hypervisor\n");
   kvm->arch.threads_indep = 1;
  } else {
   kvm->arch.threads_indep = indep_threads_mode;
  }
 }
 if (!kvm->arch.threads_indep)
  kvm_hv_vm_activated();
 if (!cpu_has_feature(CPU_FTR_ARCH_300))
  kvm->arch.smt_mode = threads_per_subcore;
 else
  kvm->arch.smt_mode = 1;
 kvm->arch.emul_smt_mode = 1;




 snprintf(buf, sizeof(buf), "vm%d", current->pid);
 kvm->arch.debugfs_dir = debugfs_create_dir(buf, kvm_debugfs_dir);
 kvmppc_mmu_debugfs_init(kvm);
 if (radix_enabled())
  kvmhv_radix_debugfs_init(kvm);

 return 0;
}

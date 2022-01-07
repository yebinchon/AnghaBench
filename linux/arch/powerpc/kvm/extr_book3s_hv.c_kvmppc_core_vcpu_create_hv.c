
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kvmppc_vcore {scalar_t__ first_vcpuid; int lock; int num_threads; } ;
struct TYPE_4__ {int shared_big_endian; int intr_msr; int hfscr; int thread_cpu; int prev_cpu; int cpu_type; scalar_t__ ptid; struct kvmppc_vcore* vcore; int cpu_run; int state; int busy_preempt; int tbacct_lock; int vpa_update_lock; int ctrl; int * mmcr; int shregs; int * shared; } ;
struct kvm_vcpu {TYPE_2__ arch; scalar_t__ vcpu_id; } ;
struct TYPE_3__ {unsigned int emul_smt_mode; int smt_mode; int mmu_setup_lock; int online_vcores; struct kvmppc_vcore** vcores; } ;
struct kvm {int lock; TYPE_1__ arch; } ;


 int BUG_ON (int) ;
 int CPU_FTR_ARCH_300 ;
 int CPU_FTR_HVMODE ;
 int CPU_FTR_P9_TM_HV_ASSIST ;
 int CPU_FTR_TM_COMP ;
 int CTRL_RUNLATCH ;
 int EINVAL ;
 int ENOMEM ;
 struct kvm_vcpu* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int HFSCR_BHRB ;
 int HFSCR_DSCR ;
 int HFSCR_EBB ;
 int HFSCR_FP ;
 int HFSCR_PM ;
 int HFSCR_TAR ;
 int HFSCR_TM ;
 int HFSCR_VECVSX ;
 int KVMPPC_VCPU_NOTREADY ;
 int KVM_CPU_3S_64 ;
 int KVM_MAX_VCORES ;
 unsigned int KVM_MAX_VCPUS ;
 int MMCR0_FC ;
 int MSR_ME ;
 int MSR_SF ;
 int SPRN_HFSCR ;
 int SPRN_PVR ;
 int TB_NIL ;
 scalar_t__ cpu_has_feature (int ) ;
 int debugfs_vcpu_init (struct kvm_vcpu*,unsigned int) ;
 int init_waitqueue_head (int *) ;
 int kmem_cache_free (int ,struct kvm_vcpu*) ;
 struct kvm_vcpu* kmem_cache_zalloc (int ,int ) ;
 int kvm_vcpu_cache ;
 int kvm_vcpu_init (struct kvm_vcpu*,struct kvm*,unsigned int) ;
 int kvmppc_mmu_book3s_hv_init (struct kvm_vcpu*) ;
 int kvmppc_pack_vcpu_id (struct kvm*,unsigned int) ;
 int kvmppc_sanity_check (struct kvm_vcpu*) ;
 int kvmppc_set_pvr_hv (struct kvm_vcpu*,int) ;
 struct kvmppc_vcore* kvmppc_vcore_create (struct kvm*,unsigned int) ;
 int mfspr (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_devel (char*,...) ;
 int spin_lock (int *) ;
 int spin_lock_init (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static struct kvm_vcpu *kvmppc_core_vcpu_create_hv(struct kvm *kvm,
         unsigned int id)
{
 struct kvm_vcpu *vcpu;
 int err;
 int core;
 struct kvmppc_vcore *vcore;

 err = -ENOMEM;
 vcpu = kmem_cache_zalloc(kvm_vcpu_cache, GFP_KERNEL);
 if (!vcpu)
  goto out;

 err = kvm_vcpu_init(vcpu, kvm, id);
 if (err)
  goto free_vcpu;

 vcpu->arch.shared = &vcpu->arch.shregs;
 vcpu->arch.mmcr[0] = MMCR0_FC;
 vcpu->arch.ctrl = CTRL_RUNLATCH;

 kvmppc_set_pvr_hv(vcpu, mfspr(SPRN_PVR));
 spin_lock_init(&vcpu->arch.vpa_update_lock);
 spin_lock_init(&vcpu->arch.tbacct_lock);
 vcpu->arch.busy_preempt = TB_NIL;
 vcpu->arch.intr_msr = MSR_SF | MSR_ME;
 vcpu->arch.hfscr = HFSCR_TAR | HFSCR_EBB | HFSCR_PM | HFSCR_BHRB |
  HFSCR_DSCR | HFSCR_VECVSX | HFSCR_FP;
 if (cpu_has_feature(CPU_FTR_HVMODE)) {
  vcpu->arch.hfscr &= mfspr(SPRN_HFSCR);
  if (cpu_has_feature(CPU_FTR_P9_TM_HV_ASSIST))
   vcpu->arch.hfscr |= HFSCR_TM;
 }
 if (cpu_has_feature(CPU_FTR_TM_COMP))
  vcpu->arch.hfscr |= HFSCR_TM;

 kvmppc_mmu_book3s_hv_init(vcpu);

 vcpu->arch.state = KVMPPC_VCPU_NOTREADY;

 init_waitqueue_head(&vcpu->arch.cpu_run);

 mutex_lock(&kvm->lock);
 vcore = ((void*)0);
 err = -EINVAL;
 if (cpu_has_feature(CPU_FTR_ARCH_300)) {
  if (id >= (KVM_MAX_VCPUS * kvm->arch.emul_smt_mode)) {
   pr_devel("KVM: VCPU ID too high\n");
   core = KVM_MAX_VCORES;
  } else {
   BUG_ON(kvm->arch.smt_mode != 1);
   core = kvmppc_pack_vcpu_id(kvm, id);
  }
 } else {
  core = id / kvm->arch.smt_mode;
 }
 if (core < KVM_MAX_VCORES) {
  vcore = kvm->arch.vcores[core];
  if (vcore && cpu_has_feature(CPU_FTR_ARCH_300)) {
   pr_devel("KVM: collision on id %u", id);
   vcore = ((void*)0);
  } else if (!vcore) {




   err = -ENOMEM;
   vcore = kvmppc_vcore_create(kvm,
     id & ~(kvm->arch.smt_mode - 1));
   mutex_lock(&kvm->arch.mmu_setup_lock);
   kvm->arch.vcores[core] = vcore;
   kvm->arch.online_vcores++;
   mutex_unlock(&kvm->arch.mmu_setup_lock);
  }
 }
 mutex_unlock(&kvm->lock);

 if (!vcore)
  goto free_vcpu;

 spin_lock(&vcore->lock);
 ++vcore->num_threads;
 spin_unlock(&vcore->lock);
 vcpu->arch.vcore = vcore;
 vcpu->arch.ptid = vcpu->vcpu_id - vcore->first_vcpuid;
 vcpu->arch.thread_cpu = -1;
 vcpu->arch.prev_cpu = -1;

 vcpu->arch.cpu_type = KVM_CPU_3S_64;
 kvmppc_sanity_check(vcpu);

 debugfs_vcpu_init(vcpu, id);

 return vcpu;

free_vcpu:
 kmem_cache_free(kvm_vcpu_cache, vcpu);
out:
 return ERR_PTR(err);
}
